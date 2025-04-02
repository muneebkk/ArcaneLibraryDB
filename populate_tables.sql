-- Insert data into LibraryItems
INSERT INTO LibraryItems (ProductID, Title, Author, Type, YearPublished, Genre, Availability)
VALUES
    (1001, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Print Book', 1997, 'Fantasy', 'Available'),
    (1002, 'The Hunger Games', 'Suzanne Collins', 'Print Book', 2008, 'Science Fiction', 'Available'),
    (1003, 'To Kill a Mockingbird', 'Harper Lee', 'Print Book', 1960, 'Fiction', 'Borrowed'),
    (1004, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Print Book', 1925, 'Classic', 'Available'),
    (1005, 'Pride and Prejudice', 'Jane Austen', 'Print Book', 1813, 'Romance', 'Borrowed'),
    (1006, 'National Geographic', 'National Geographic Society', 'Magazine', 2023, 'Science', 'Available'),
    (1007, 'Journal of Computer Science', 'Various', 'Scientific Journal', 2023, 'Computer Science', 'Available'),
    (1008, 'Abbey Road', 'The Beatles', 'Record', 1969, 'Rock', 'Borrowed'),
    (1009, 'Introduction to Database Systems', 'C.J. Date', 'Online Book', 2020, 'Education', 'Available'),
    (1010, 'Thriller', 'Michael Jackson', 'CD', 1982, 'Pop', 'Available'),
    (1011, 'The Avengers', 'Marvel Studios', 'DVD', 2012, 'Action', 'Borrowed'),
    (1012, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Print Book', 1954, 'Fantasy', 'Available'),
    (1013, 'Time Magazine', 'Time Inc.', 'Magazine', 2023, 'News', 'Available'),
    (1014, 'Journal of Medical Research', 'Various', 'Scientific Journal', 2023, 'Medicine', 'Available'),
    (1015, 'Python Programming', 'Eric Matthes', 'Print Book', 2019, 'Programming', 'Borrowed');

-- Insert data into LibraryMembers
INSERT INTO LibraryMembers (Name, Email, Phone, Address, MembershipDate, MembershipStatus, MemberType)
VALUES
    ('John Smith', 'john.smith@email.com', '555-123-4567', '123 Main St, Anytown', '2022-01-15', 'Active', 'Adult'),
    ('Sarah Johnson', 'sarah.j@email.com', '555-234-5678', '456 Oak Ave, Somecity', '2022-02-20', 'Active', 'Student'),
    ('Robert Davis', 'robert.d@email.com', '555-345-6789', '789 Pine Rd, Othertown', '2022-03-10', 'Active', 'Senior'),
    ('Emily Wilson', 'emily.w@email.com', '555-456-7890', '101 Elm St, Anytown', '2022-04-05', 'Active', 'Adult'),
    ('Michael Brown', 'michael.b@email.com', '555-567-8901', '202 Maple Dr, Somecity', '2022-05-12', 'Expired', 'Adult'),
    ('Emma Taylor', 'emma.t@email.com', '555-678-9012', '303 Birch Ln, Othertown', '2022-06-18', 'Active', 'Child'),
    ('William Jones', 'william.j@email.com', '555-789-0123', '404 Cedar Ct, Anytown', '2022-07-22', 'Active', 'Student'),
    ('Olivia Garcia', 'olivia.g@email.com', '555-890-1234', '505 Walnut Ave, Somecity', '2022-08-30', 'Suspended', 'Adult'),
    ('James Martinez', 'james.m@email.com', '555-901-2345', '606 Spruce St, Othertown', '2022-09-14', 'Active', 'Senior'),
    ('Sophia Miller', 'sophia.m@email.com', '555-012-3456', '707 Fir Rd, Anytown', '2022-10-05', 'Active', 'Adult'),
    ('Benjamin Harris', 'benjamin.h@email.com', '555-123-7890', '808 Pineapple Pkwy, Somecity', '2022-11-11', 'Active', 'Adult'),
    ('Isabella Wilson', 'isabella.w@email.com', '555-234-8901', '909 Orange Blvd, Othertown', '2022-12-20', 'Active', 'Child');

-- Insert data into LibraryRooms
INSERT INTO LibraryRooms (RoomName, Capacity, RoomType, Equipment, Availability)
VALUES
    ('Main Conference Room', 50, 'Meeting', 'Projector, Whiteboard, Video Conference System', 'Available'),
    ('Study Room A', 10, 'Study', 'Whiteboard, Wi-Fi', 'Booked'),
    ('Study Room B', 8, 'Study', 'Whiteboard, Wi-Fi', 'Available'),
    ('Events Hall', 100, 'Auditorium', 'Stage, Sound System, Projector, Podium', 'Available'),
    ('Children''s Activity Room', 30, 'Activity', 'Tables, Chairs, Art Supplies', 'Booked'),
    ('Computer Lab', 20, 'Lab', '20 Computers, Printer, Scanner', 'Available'),
    ('Reading Lounge', 25, 'Lounge', 'Comfortable Seating, Coffee Station', 'Available'),
    ('Media Room', 15, 'Media', 'TV, DVD Player, Sound System', 'Booked'),
    ('Workshop Space', 30, 'Workshop', 'Tables, Tools, Supplies', 'Available'),
    ('Quiet Study Area', 40, 'Study', 'Individual Study Carrels, Wi-Fi', 'Available');

-- Insert data into LibraryStaff
INSERT INTO LibraryStaff (Name, Position, Department, Email, Phone, HireDate, SupervisorID, AccessLevel)
VALUES
    ('Margaret Thompson', 'Head Librarian', 'Administration', 'margaret.t@library.org', '555-111-0001', '2015-05-10', NULL, 5),
    ('David Chen', 'Reference Librarian', 'Reference', 'david.c@library.org', '555-111-0002', '2016-07-15', 1, 4),
    ('Patricia Williams', 'Circulation Manager', 'Circulation', 'patricia.w@library.org', '555-111-0003', '2017-03-22', 1, 4),
    ('Samuel Rodriguez', 'Technical Services Librarian', 'Technical Services', 'samuel.r@library.org', '555-111-0004', '2018-09-05', 1, 4),
    ('Linda Kim', 'Children''s Librarian', 'Children''s Services', 'linda.k@library.org', '555-111-0005', '2019-01-20', 1, 3),
    ('Robert Wilson', 'IT Specialist', 'IT', 'robert.w@library.org', '555-111-0006', '2019-06-14', 1, 3),
    ('Jessica Lee', 'Events Coordinator', 'Community Outreach', 'jessica.l@library.org', '555-111-0007', '2020-02-28', 1, 3),
    ('Thomas Brown', 'Circulation Assistant', 'Circulation', 'thomas.b@library.org', '555-111-0008', '2020-08-17', 3, 2),
    ('Maria Garcia', 'Reference Assistant', 'Reference', 'maria.g@library.org', '555-111-0009', '2021-04-03', 2, 2),
    ('James Johnson', 'Library Assistant', 'Circulation', 'james.j@library.org', '555-111-0010', '2021-11-15', 3, 1),
    ('Michelle Park', 'Library Assistant', 'Children''s Services', 'michelle.p@library.org', '555-111-0011', '2022-02-10', 5, 1),
    ('Daniel Martinez', 'Technical Assistant', 'Technical Services', 'daniel.m@library.org', '555-111-0012', '2022-05-22', 4, 2);

-- Insert data into Events
INSERT INTO Events (Title, Description, DateTime, Duration, RoomID, TargetAudience, MaximumCapacity, CurrentRegistration, OrganizerID)
VALUES
    ('Book Club: Fantasy Fiction', 'Discussion of fantasy novels', '2025-04-10 18:00:00', 90, 1, 'Adults', 20, 2, 2),
    ('Children''s Story Time', 'Interactive story reading for kids', '2025-04-12 10:00:00', 60, 5, 'Children', 15, 4, 5),
    ('Computer Basics Workshop', 'Learn basic computer skills', '2025-04-15 14:00:00', 120, 6, 'Seniors', 10, 8, 6),
    ('Poetry Reading', 'Local poets share their work', '2025-04-18 19:00:00', 90, 4, 'All Ages', 50, 10, 7),
    ('Database Tutorial', 'Learn to use library databases', '2025-04-20 15:00:00', 60, 6, 'Students', 15, 0, 2),
    ('Movie Night: Classic Films', 'Screening of classic movies', '2025-04-22 17:00:00', 150, 8, 'Adults', 30, 10, 7),
    ('Science for Kids', 'Fun science experiments', '2025-04-25 13:00:00', 120, 5, 'Children', 20, 0, 5),
    ('Job Search Workshop', 'Resume and interview tips', '2025-04-28 16:00:00', 90, 1, 'Adults', 25, 0, 3),
    ('Local History Talk', 'Learn about our town history', '2025-05-02 18:00:00', 120, 4, 'All Ages', 75, 0, 2),
    ('Art Show Opening', 'Exhibit of local artists', '2025-05-05 19:00:00', 180, 4, 'All Ages', 100, 0, 7);

-- Insert data into EventRegistration
INSERT INTO EventRegistration (EventID, MemberID, RegistrationDate, AttendanceStatus)
VALUES
    (1, 1, '2025-03-25 09:15:00', 'Registered'),
    (1, 4, '2025-03-26 14:30:00', 'Registered'),
    (2, 6, '2025-03-27 10:45:00', 'Registered'),
    (2, 12, '2025-03-27 11:20:00', 'Registered'),
    (2, 2, '2025-03-27 13:00:00', 'Registered'),
    (2, 5, '2025-03-27 15:30:00', 'Registered'),
    (3, 3, '2025-03-28 16:10:00', 'Registered'),
    (3, 9, '2025-03-28 17:05:00', 'Registered'),
    (3, 10, '2025-03-28 09:20:00', 'Registered'),
    (3, 11, '2025-03-28 10:45:00', 'Registered'),
    (3, 1, '2025-03-28 11:30:00', 'Registered'),
    (3, 4, '2025-03-28 13:15:00', 'Registered'),
    (3, 5, '2025-03-28 14:40:00', 'Registered'),
    (3, 7, '2025-03-28 16:00:00', 'Registered'),
    (4, 2, '2025-03-29 13:40:00', 'Registered'),
    (4, 7, '2025-03-29 15:15:00', 'Registered'),
    (4, 1, '2025-03-29 10:20:00', 'Registered'),
    (4, 3, '2025-03-29 11:05:00', 'Registered'),
    (4, 4, '2025-03-29 12:30:00', 'Registered'),
    (4, 6, '2025-03-29 13:45:00', 'Registered'),
    (4, 9, '2025-03-29 14:10:00', 'Registered'),
    (4, 10, '2025-03-29 15:30:00', 'Registered'),
    (4, 11, '2025-03-29 16:20:00', 'Registered'),
    (4, 12, '2025-03-29 17:05:00', 'Registered'),
    (6, 1, '2025-03-31 10:20:00', 'Registered'),
    (6, 2, '2025-03-31 11:15:00', 'Registered'),
    (6, 3, '2025-03-31 12:10:00', 'Registered'),
    (6, 4, '2025-03-31 13:05:00', 'Registered'),
    (6, 5, '2025-03-31 14:00:00', 'Registered'),
    (6, 7, '2025-03-31 14:55:00', 'Registered'),
    (6, 9, '2025-03-31 15:50:00', 'Registered'),
    (6, 10, '2025-03-31 16:45:00', 'Registered'),
    (6, 11, '2025-03-31 17:40:00', 'Registered'),
    (6, 12, '2025-03-31 18:35:00', 'Registered');

-- Insert data into Borrowing
INSERT INTO Borrowing (MemberID, ItemID, BorrowDate, DueDate, ReturnDate, FineAmount, FineStatus)
VALUES
    (1, 3, '2025-03-01', '2025-03-15', NULL, 0.00, 'Not Applicable'),
    (2, 5, '2025-03-05', '2025-03-19', NULL, 0.00, 'Not Applicable'),
    (3, 8, '2025-03-08', '2025-03-22', NULL, 0.00, 'Not Applicable'),
    (4, 11, '2025-03-10', '2025-03-24', NULL, 0.00, 'Not Applicable'),
    (5, 15, '2025-03-12', '2025-03-26', NULL, 0.00, 'Not Applicable'),
    (6, 2, '2025-02-15', '2025-03-01', '2025-03-10', 4.50, 'Unpaid'),
    (7, 7, '2025-02-18', '2025-03-04', '2025-03-03', 0.00, 'Not Applicable'),
    (8, 9, '2025-02-20', '2025-03-06', '2025-03-05', 0.00, 'Not Applicable'),
    (9, 1, '2025-02-22', '2025-03-08', '2025-03-08', 0.00, 'Not Applicable'),
    (10, 4, '2025-02-25', '2025-03-11', '2025-03-09', 0.00, 'Not Applicable'),
    (11, 10, '2025-02-27', '2025-03-13', '2025-03-12', 0.00, 'Not Applicable'),
    (12, 12, '2025-02-28', '2025-03-14', '2025-03-13', 0.00, 'Not Applicable');

-- Insert data into DonationsAcquisitions
INSERT INTO DonationsAcquisitions (Title, AuthorCreator, Type, Source, SuggestedBy, SuggestionDate, Status, DecisionDate, Notes)
VALUES
    ('Database Management Systems', 'Ramakrishnan and Gehrke', 'Print Book', 'Donation', 1, '2025-03-05', 'Acquired', '2025-03-15', 'Excellent condition, popular textbook'),
    ('Algorithms to Live By', 'Brian Christian', 'Print Book', 'Purchase Recommendation', 4, '2025-03-07', 'Approved', '2025-03-18', 'Multiple patron requests'),
    ('Python for Data Science', 'Jake VanderPlas', 'Print Book', 'Donation', 9, '2025-03-10', 'Acquired', '2025-03-20', 'Brand new copy, perfect for programming section'),
    ('Dune', 'Frank Herbert', 'Print Book', 'Purchase Recommendation', 2, '2025-03-12', 'Pending', NULL, 'Checking existing copies'),
    ('National Geographic Collection', 'Various', 'Magazine', 'Donation', 3, '2025-03-15', 'Rejected', '2025-03-25', 'Already have subscription'),
    ('The Queen''s Gambit', 'Walter Tevis', 'Print Book', 'Purchase Recommendation', 7, '2025-03-18', 'Approved', '2025-03-28', 'High demand due to Netflix series'),
    ('SQL for Beginners', 'Alex Martelli', 'Print Book', 'Donation', 5, '2025-03-20', 'Acquired', '2025-03-30', 'Good condition, useful reference'),
    ('Clean Code', 'Robert C. Martin', 'Print Book', 'Purchase Recommendation', 10, '2025-03-22', 'Approved', '2025-04-01', 'Essential programming book'),
    ('The Beatles Anthology', 'The Beatles', 'DVD', 'Donation', 4, '2025-03-25', 'Pending', NULL, 'Checking disc condition'),
    ('A Brief History of Time', 'Stephen Hawking', 'Print Book', 'Purchase Recommendation', 8, '2025-03-27', 'Approved', '2025-04-05', 'Popular science book');

-- Insert data into HelpRequests
INSERT INTO HelpRequests (MemberID, StaffID, RequestDate, RequestDescription, Status, ResolutionDate, ResolutionNotes)
VALUES
    (1, 2, '2025-03-05 10:15:00', 'Need help finding research materials on database systems', 'Resolved', '2025-03-05 11:00:00', 'Directed to computer science section and online databases'),
    (3, 5, '2025-03-07 14:30:00', 'Looking for age-appropriate books for 8-year-old', 'Resolved', '2025-03-07 15:00:00', 'Recommended several children''s adventure series'),
    (5, 3, '2025-03-10 11:45:00', 'Having trouble with online account access', 'Resolved', '2025-03-10 12:15:00', 'Reset password and demonstrated account features'),
    (2, 9, '2025-03-12 16:20:00', 'Need assistance with research database search', 'Resolved', '2025-03-12 17:00:00', 'Provided tutorial on advanced search techniques'),
    (7, 6, '2025-03-15 13:10:00', 'Computer in lab #3 not connecting to printer', 'Resolved', '2025-03-15 14:00:00', 'Fixed driver issue on the computer'),
    (4, 2, '2025-03-18 15:45:00', 'Looking for specific journal article on computer science', 'Resolved', '2025-03-18 16:30:00', 'Located article in database and showed how to download'),
    (9, 5, '2025-03-20 10:30:00', 'Recommendations for programming books for beginners', 'Resolved', '2025-03-20 11:15:00', 'Provided list of titles and authors'),
    (8, 3, '2025-03-22 12:00:00', 'Question about overdue fine on account', 'Resolved', '2025-03-22 12:30:00', 'Explained fine policy and payment options'),
    (10, 7, '2025-03-25 17:15:00', 'Interested in upcoming events for seniors', 'Resolved', '2025-03-25 17:45:00', 'Provided calendar of events and registration information'),
    (6, 11, '2025-03-27 11:00:00', 'Looking for ebooks on database management', 'In Progress', NULL, NULL),
    (1, NULL, '2025-03-29 14:25:00', 'Need help with e-reader setup', 'Pending', NULL, NULL);

-- Insert data into Volunteers
INSERT INTO Volunteers (MemberID, StartDate, EndDate, HoursPerWeek, Role, SupervisorID, Status)
VALUES
    (2, '2025-01-10', NULL, 5, 'Reading Buddy', 5, 'Active'),
    (4, '2025-01-15', NULL, 8, 'Shelving Assistant', 3, 'Active'),
    (7, '2025-01-20', NULL, 4, 'Computer Help Desk', 6, 'Active'),
    (9, '2025-02-05', NULL, 6, 'Events Assistant', 7, 'Active'),
    (1, '2025-02-10', NULL, 3, 'Book Club Facilitator', 2, 'Active'),
    (3, '2025-02-15', '2025-05-15', 10, 'Library Tour Guide', 1, 'Active'),
    (10, '2025-02-20', NULL, 5, 'Cataloging Assistant', 4, 'Active'),
    (6, '2025-03-01', NULL, 2, 'Children''s Activity Helper', 5, 'Active'),
    (8, '2025-03-10', '2025-06-10', 8, 'Administrative Assistant', 1, 'Active'),
    (11, '2025-03-15', NULL, 4, 'Outreach Volunteer', 7, 'Active');