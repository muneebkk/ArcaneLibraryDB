-- creating tables for database, along with triggers to maintain integrity

CREATE TABLE LibraryItems(
    productID TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    author TEXT NOT NULL,
    publicationYear INTEGER,    -- might change to publicationDate, so DATE type can be used
    genre TEXT NOT NULL,
    FutureItem TEXT,            -- simply 'Yes' or 'No' indicating if it is a future item
    CHECK (publicationYear BETWEEN 1000 AND 2025),
    CHECK (FutureItem IN ('Yes','No'))
    );

CREATE TABLE LibraryCopies(
    itemID INTEGER PRIMARY KEY,
    productID TEXT NOT NULL,
    availability TEXT NOT NULL,
    CHECK (availability IN ('Available','Borrowed')),
    FOREIGN KEY (productID) REFERENCES LibraryItems(productID)
    );


CREATE TABLE Users (
    userID INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT UNIQUE NOT NULL,
    membershipSince DATE NOT NULL
);


CREATE TABLE Borrows(
    borrowID INTEGER PRIMARY KEY,
    itemID INTEGER NOT NULL,
    userID INTEGER NOT NULL,
    borrowDate DATE NOT NULL,
    dueDate DATE NOT NULL,
    returnedDate DATE,
    fine REAL DEFAULT 0.0,  -- if no fine, by default a fine of 0.0
    FOREIGN KEY (itemID) REFERENCES LibraryCopies(itemID),
    FOREIGN KEY (userID) REFERENCES Users(userID),
    CHECK ( borrowDate <= dueDate ),
    CHECK ( returnedDate IS NULL OR borrowDate <= returnedDate), -- either not returned (which obv will be case initially) or return date is after borrow date
    CHECK ( fine >= 0.0 )
    );

-- CREATE TABLE FutureItems (
--     productID TEXT PRIMARY KEY,
--     type TEXT,
--     author TEXT,
--     publicationYear INTEGER,
--     genre TEXT
-- );


CREATE TABLE LibraryRooms (
    roomID INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    capacity INTEGER,
    type TEXT NOT NULL,
    CHECK ( capacity > 0 )
);

CREATE TABLE Personnel (
    staffID INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT,
    hireDate DATE NOT NULL
);


CREATE TABLE Events (
    eventID INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT,
    date TEXT NOT NULL, -- stored as 'YYYY-MM-DD HH:MM:SS'
    audience TEXT NOT NULL, 
    roomID TEXT NOT NULL,
    FOREIGN KEY (roomID) REFERENCES LibraryRooms(roomID),
    CHECK (audience IN ('Kids' , 'Teens', 'Youth', 'Students' , 'Adults' , 'Everyone'))
);


CREATE TABLE Attending (
    userID INTEGER NOT NULL,
    eventID INTEGER NOT NULL,
    PRIMARY KEY (userID, eventID),
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (eventID) REFERENCES Events(eventID)
);

CREATE TABLE Volunteering (
    staffID INTEGER NOT NULL,
    eventID INTEGER NOT NULL,
    PRIMARY KEY (staffID, eventID),
    FOREIGN KEY (staffID) REFERENCES Personnel(staffID),
    FOREIGN KEY (eventID) REFERENCES Events(eventID)
);

CREATE TRIGGER UpdatetoBorrowed
AFTER INSERT ON Borrows
FOR EACH ROW
BEGIN
    UPDATE LibraryCopies
    SET availability = 'Borrowed'
    WHERE itemID = NEW.itemID;
END;

CREATE TRIGGER UpdatetoAvailable
AFTER UPDATE OF returnedDate ON Borrows
FOR EACH ROW
BEGIN
    UPDATE LibraryCopies
    SET availability = 'Available'
    WHERE itemID = NEW.itemID;
END;

CREATE TRIGGER PreventUnavailable
BEFORE INSERT ON Borrows
FOR EACH ROW
BEGIN 
    SELECT RAISE(ABORT, "No copies of this item are available for borrowing")
    WHERE EXISTS (
        SELECT 1
        FROM LibraryCopies
        WHERE itemID = NEW.itemID AND availability = "Borrowed"
    );
END;

CREATE TRIGGER PreventOverlappingEvents
BEFORE INSERT ON Events
FOR EACH ROW 
BEGIN 
    SELECT RAISE(ABORT, "Room is already booked for this data and time")
    WHERE EXISTS (
        SELECT 1
        FROM Events
        WHERE roomID = New.roomID AND date(date) = date(NEW.date)
    );
END;

CREATE TRIGGER RoomFull
BEFORE INSERT ON Attending
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, "Room is full")
    WHERE (
        SELECT COUNT(*)
        FROM Attending
        WHERE eventID = NEW.eventID
    ) >= (
        SELECT capacity
        FROM LibraryRooms
        WHERE roomID = (SELECT roomID FROM Events WHERE eventID = NEW.eventID)
    );
END;

CREATE TRIGGER CalculateFine
AFTER UPDATE OF returnedDate ON Borrows
FOR EACH ROW
BEGIN 
    UPDATE Borrows
    SET fine = MAX( (julianday(NEW.returnedDate) - julianday(dueDate)) * 5, 0)  -- checks if returnDate - dueDate is positive i.e dueDate has passsed, and multiplies those extra number of days by daily fine amount - $5
    WHERE borrowID = NEW.borrowID;
END;


