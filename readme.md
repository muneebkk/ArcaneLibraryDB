# 📚 Arcane Library Database Application

Welcome to the Arcane Library — a terminal-based application built with **SQLite** and **Python** to simulate a real-world library system. Users can borrow and return items, register for events, volunteer, donate books, and more.

---

## 🚀 Features (Step 7)

| Action                     | Description                                                 |
|---------------------------|-------------------------------------------------------------|
| Find an item              | Search library items by title or author                     |
| Borrow an item            | Borrow a specific copy of a library item                    |
| Return a borrowed item    | Return a borrowed item by Borrow ID                        |
| Donate an item            | Suggest a future item to be added to the library            |
| Find an event             | Search library events by keyword                            |
| Register for an event     | Register a user for a library event                         |
| Volunteer for the library | Register a staff member to volunteer at an event            |
| Ask a librarian           | Send a question to the library staff (placeholder only)     |

---

## 🗂️ File Structure

| File                     | Purpose                                |
|--------------------------|----------------------------------------|
| `library_schema.sql`     | SQL schema for all tables              |
| `populate_tables.sql`    | Sample data for all tables             |
| `library_setup_db.py`    | Creates and populates the database     |
| `library_application.py` | Menu-based terminal application        |
| `library.db`             | SQLite database (auto-generated)       |

---

## ⚙️ Setup Instructions

1. **Install Python (3.6 or newer)** – no extra packages required.
2. **Open a terminal** and navigate to the project folder.
3. **Build and populate the database:**

```bash
python library_setup_db.py
```

✅ This creates `library.db` using the schema and fills it with sample data.

---

## 🧪 Run the Application

```bash
python library_application.py
```

You'll see this menu:

```
📚 LIBRARY SYSTEM MENU
1. Find an item
2. Borrow an item
3. Return an item
4. Donate an item
5. Find an event
6. Register for an event
7. Volunteer for an event
8. Ask a librarian
9. Exit
```

---

## 📝 How to Use Each Scenario

### 1️⃣ Find an Item
- Choose option 1
- Enter a **title or author keyword**
- Example: `1984` or `Rowling`
- You'll see matching items, including their `itemID` and availability

### 2️⃣ Borrow an Item
- Choose option 2
- Enter your **User ID** (1–10)
- Enter an **Item ID** shown from option 1
- ✅ Only items marked "Available" can be borrowed

### 3️⃣ Return an Item
- Choose option 3
- Enter your **Borrow ID**
- ✅ Return date and any overdue fines will be recorded automatically

### 4️⃣ Donate an Item
- Choose option 4
- Enter:
  - Product ID: e.g. `F011`
  - Type: `Print Book`, `CD`, etc.
  - Author: Any name
  - Year: e.g. `2025`
  - Genre: e.g. `Mystery`
- ✅ Item will be saved to the `FutureItems` table

### 5️⃣ Find an Event
- Choose option 5
- Enter a keyword like: `Book`, `Tech`, `Kids`
- ✅ You’ll get a list of upcoming events matching that term

### 6️⃣ Register for an Event
- Choose option 6
- Enter **Event ID** and your **User ID**
- ✅ You'll be added to the `Attends` table

### 7️⃣ Volunteer for an Event
- Choose option 7
- Enter **Event ID** and **Employee ID**
- ✅ You'll be added to the `Volunteering` table

### 8️⃣ Ask a Librarian
- Choose option 8
- Type any question (e.g., “Where are the science journals?”)
- 📬 The system will simulate sending it (no storage yet)

---

## 📌 Notes

- Re-running `library_setup_db.py` will delete your database and reload the original sample data. Only run it once.
- Use SQLite Viewer or CLI to view the raw tables (e.g. `sqlite3 library.db` + `SELECT * FROM FutureItems;`)

---

