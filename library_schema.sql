CREATE TABLE LibraryItems (
    productID TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    type TEXT NOT NULL,
    author TEXT,
    publicationYear INTEGER,
    genre TEXT
);


CREATE TABLE LibraryCopies (
    itemID INTEGER PRIMARY KEY,
    productID TEXT NOT NULL,
    availability TEXT CHECK(availability IN ('Available', 'Borrowed')) NOT NULL,
    FOREIGN KEY (productID) REFERENCES LibraryItems(productID)
);

CREATE TABLE Users (
    userID INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    membershipSince TEXT
);

CREATE TABLE Borrows (
    borrowID INTEGER PRIMARY KEY,
    itemID INTEGER,
    userID INTEGER,
    borrowDate TEXT,
    dueDate TEXT,
    returnedDate TEXT,
    fine REAL DEFAULT 0.0,
    FOREIGN KEY (itemID) REFERENCES LibraryCopies(itemID),
    FOREIGN KEY (userID) REFERENCES Users(userID)
);

CREATE TABLE FutureItems (
    productID TEXT PRIMARY KEY,
    type TEXT,
    author TEXT,
    publicationYear INTEGER,
    genre TEXT
);

CREATE TABLE LibraryRooms (
    roomID INTEGER PRIMARY KEY,
    name TEXT,
    type TEXT,
    capacity INTEGER
);

CREATE TABLE Personnel (
    employeeID INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    employeeSince TEXT
);

CREATE TABLE Events (
    eventID INTEGER PRIMARY KEY,
    name TEXT,
    type TEXT,
    date TEXT,
    audience TEXT,
    roomID INTEGER,
    FOREIGN KEY (roomID) REFERENCES LibraryRooms(roomID)
);

CREATE TABLE Attends (
    eventID INTEGER,
    userID INTEGER,
    PRIMARY KEY (eventID, userID),
    FOREIGN KEY (eventID) REFERENCES Events(eventID),
    FOREIGN KEY (userID) REFERENCES Users(userID)
);

CREATE TABLE Volunteering (
    eventID INTEGER,
    employeeID INTEGER,
    PRIMARY KEY (eventID, employeeID),
    FOREIGN KEY (eventID) REFERENCES Events(eventID),
    FOREIGN KEY (employeeID) REFERENCES Personnel(employeeID)
);


