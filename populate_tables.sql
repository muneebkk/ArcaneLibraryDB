-- File: populate_tables.sql

-- LibraryItems
INSERT INTO LibraryItems (productID, title, type, author, publicationYear, genre) VALUES
('P001', '1984', 'Print Book', 'George Orwell', 1949, 'Dystopian'),
('P002', 'Harry Potter and the Philosopher''s Stone', 'Print Book', 'J.K. Rowling', 1997, 'Fantasy'),
('P003', 'National Geographic March 2022', 'Magazine', 'National Geographic Society', 2022, 'Nature'),
('P004', 'Abbey Road', 'CD', 'The Beatles', 1969, 'Music'),
('P005', 'Nature Vol. 586', 'Journal', 'Nature Publishing Group', 2020, 'Science'),
('P006', 'The Great Gatsby', 'Print Book', 'F. Scott Fitzgerald', 1925, 'Classic'),
('P007', 'Symphony No.5', 'CD', 'Ludwig van Beethoven', 1808, 'Classical'),
('P008', 'The Fellowship of the Ring', 'Print Book', 'J.R.R. Tolkien', 1954, 'Fantasy'),
('P009', 'TIME Magazine July 2023', 'Magazine', 'TIME', 2023, 'News'),
('P010', 'IEEE Transactions', 'Journal', 'IEEE', 2021, 'Engineering');

-- LibraryCopies
INSERT INTO LibraryCopies (itemID, productID, availability) VALUES
(1, 'P001', 'Available'),
(2, 'P002', 'Borrowed'),
(3, 'P003', 'Available'),
(4, 'P004', 'Available'),
(5, 'P005', 'Available'),
(6, 'P006', 'Borrowed'),
(7, 'P007', 'Available'),
(8, 'P008', 'Available'),
(9, 'P009', 'Available'),
(10, 'P010', 'Available');

-- Users
INSERT INTO Users (userID, name, email, membershipSince) VALUES
(1, 'Alice Smith', 'alice@example.com', '2020-01-15'),
(2, 'Bob Johnson', 'bob@example.com', '2019-11-23'),
(3, 'Cathy Brown', 'cathy@example.com', '2021-06-05'),
(4, 'David Lee', 'david@example.com', '2022-03-11'),
(5, 'Eva Green', 'eva@example.com', '2018-08-19'),
(6, 'Frank Moore', 'frank@example.com', '2021-12-02'),
(7, 'Grace Hall', 'grace@example.com', '2020-07-27'),
(8, 'Hank Kim', 'hank@example.com', '2023-01-10'),
(9, 'Ivy Scott', 'ivy@example.com', '2019-09-30'),
(10, 'Jake Hill', 'jake@example.com', '2022-05-21');

-- Borrows
INSERT INTO Borrows (borrowID, itemID, userID, borrowDate, dueDate, returnedDate, fine) VALUES
(1, 2, 1, '2024-03-01', '2024-03-15', '2024-03-14', 0.0),
(2, 6, 3, '2024-03-10', '2024-03-24', NULL, 0.0);

-- FutureItems
INSERT INTO FutureItems (productID, type, author, publicationYear, genre) VALUES
('F001', 'Print Book', 'New Author', 2025, 'Sci-Fi'),
('F002', 'CD', 'Emerging Artist', 2024, 'Pop'),
('F003', 'Magazine', 'World News', 2024, 'Politics'),
('F004', 'Journal', 'ACM', 2025, 'Computing'),
('F005', 'Print Book', 'Indie Author', 2024, 'Mystery'),
('F006', 'Print Book', 'Self Publisher', 2024, 'Self-Help'),
('F007', 'Journal', 'Science Group', 2023, 'Health'),
('F008', 'CD', 'Local Band', 2024, 'Rock'),
('F009', 'Print Book', 'First Time Writer', 2025, 'Adventure'),
('F010', 'Magazine', 'Tech Review', 2025, 'Technology');

-- LibraryRooms
INSERT INTO LibraryRooms (roomID, name, type, capacity) VALUES
(1, 'Main Hall', 'Auditorium', 100),
(2, 'Room A', 'Study', 20),
(3, 'Room B', 'Meeting', 15),
(4, 'Kids Room', 'Activity', 25),
(5, 'Workshop Area', 'Multi-purpose', 30),
(6, 'Tech Room', 'Lab', 10),
(7, 'Reading Nook', 'Study', 8),
(8, 'Cinema Room', 'Screening', 40),
(9, 'Art Room', 'Gallery', 18),
(10, 'Boardroom', 'Meeting', 12);

-- Personnel
INSERT INTO Personnel (employeeID, name, email, employeeSince) VALUES
(1, 'Librarian A', 'liba@library.com', '2019-01-01'),
(2, 'Librarian B', 'libb@library.com', '2020-06-12'),
(3, 'Assistant C', 'asc@library.com', '2021-09-17'),
(4, 'Tech D', 'techd@library.com', '2023-02-25'),
(5, 'Event E', 'evente@library.com', '2020-11-03'),
(6, 'Volunteer F', 'vf@library.com', '2022-08-08'),
(7, 'Librarian G', 'libg@library.com', '2018-03-22'),
(8, 'Admin H', 'adh@library.com', '2019-05-30'),
(9, 'Coordinator I', 'ci@library.com', '2021-12-12'),
(10, 'Clerk J', 'cj@library.com', '2023-07-15');

-- Events
INSERT INTO Events (eventID, name, type, date, audience, roomID) VALUES
(1, 'Book Club', 'Reading', '2024-04-10', 'Adults', 1),
(2, 'Kids Story Time', 'Storytelling', '2024-04-12', 'Children', 4),
(3, 'Art Show', 'Exhibition', '2024-05-01', 'General', 9),
(4, 'Film Night', 'Screening', '2024-04-18', 'Teens', 8),
(5, 'Tech Workshop', 'Workshop', '2024-04-20', 'Students', 6),
(6, 'Poetry Slam', 'Performance', '2024-04-25', 'Adults', 5),
(7, 'Game Night', 'Social', '2024-04-28', 'Teens', 3),
(8, 'Coding 101', 'Workshop', '2024-05-05', 'Youth', 2),
(9, 'Film Fest', 'Screening', '2024-05-12', 'General', 8),
(10, 'Magazine Expo', 'Exhibition', '2024-05-15', 'Everyone', 9);

-- Attends
INSERT INTO Attends (eventID, userID) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
(3, 6), (4, 7), (5, 8), (6, 9), (7, 10);

-- Volunteering
INSERT INTO Volunteering (eventID, employeeID) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);