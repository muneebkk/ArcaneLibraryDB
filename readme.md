# Library Database Management System

This project implements a library database system for a database management course mini-project.

## Project Structure

The project consists of the following files:

1. `library_schema.sql` - SQL schema for creating all database tables and triggers
2. `populate_tables.sql` - SQL script to populate the database with sample data
3. `library_setup_db.py` - Python script to set up the database initially
4. `library_application.py` - Python application for interacting with the database
5. `library.db` - The SQLite database file (created by running the setup script)

## Setup Instructions

### Prerequisites

- Python 3.6 or higher
- SQLite3

### Setup Steps

1. **Set up the database**:
   ```bash
   python library_setup_db.py
   ```
   This will create a new `library.db` file with all the necessary tables and sample data.

2. **Run the application**:
   ```bash
   python library_application.py
   ```

## Features

The library management application supports the following features as required:

1. **Find an item in the library**
   - Search for items by title, author, genre, or type

2. **Borrow an item from the library**
   - Process borrowing transactions with automatic due dates
   - Check item availability and member status

3. **Return a borrowed item**
   - Process returns with automatic fine calculation for late returns
   - View currently borrowed items

4. **Donate an item to the library**
   - Record donations with metadata
   - Track acquisition status

5. **Find an event in the library**
   - Search for events with various filters
   - View event details

6. **Register for an event in the library**
   - View available events
   - Process event registrations with capacity tracking

7. **Volunteer for the library**
   - Submit volunteer applications
   - Track volunteer information

8. **Ask for help from a librarian**
   - Submit help requests
   - Track request status

## Database Schema

The database includes the following main tables:

- **LibraryItems** - Books, magazines, DVDs, etc.
- **LibraryMembers** - Library member information
- **Borrowing** - Borrowing transactions
- **Events** - Library events
- **EventRegistration** - Event registrations
- **LibraryRooms** - Physical spaces in the library
- **LibraryStaff** - Staff information
- **Volunteers** - Library volunteers
- **HelpRequests** - Member requests for assistance
- **DonationsAcquisitions** - Donated items and acquisition requests

## Sample Data

The database is pre-populated with sample data including:
- 15 library items of various types
- 12 library members
- 10 events
- 12 borrowing records
- And more sample data for other tables

## Testing

For testing purposes, you can use the following sample IDs:
- Member IDs: 1-12
- Item IDs: 1-15
- Event IDs: 1-10

## Notes on BCNF Compliance

The database schema has been designed to comply with Boyce-Codd Normal Form (BCNF):
- Each table has a clear primary key
- All non-key attributes are fully dependent on the primary key
- There are no transitive dependencies
- Foreign key constraints ensure referential integrity
- Trigger constraints maintain data consistency