import sqlite3

def find_item(name):
    with sqlite3.connect("library.db") as conn:
        cur = conn.cursor()
        cur.execute("""
    SELECT LI.productID, LI.name, LI.type, LI.author, LI.publicationYear, LI.genre, LC.itemID, LC.availability
    FROM LibraryItems LI
    JOIN LibraryCopies LC ON LI.productID = LC.productID
    WHERE LI.name LIKE ? OR LI.author LIKE ?
""", (f"%{name}%", f"%{name}%"))
        return cur.fetchall()

def borrow_item(user_id, item_id):
    with sqlite3.connect("library.db") as conn:
        cur = conn.cursor()
        cur.execute("SELECT availability FROM LibraryCopies WHERE itemID = ?", (item_id,))
        result = cur.fetchone()
        if result and result[0] == "Available":
            cur.execute("INSERT INTO Borrows (itemID, userID, borrowDate, dueDate) VALUES (?, ?, DATE('now'), DATE('now', '+14 days'))", (item_id, user_id))
            conn.commit()    # the update to the items status i.e. borrowed now is handled by the trigger
            print("✅ Item borrowed.")
        else:
            print("❌ Item is not available or doesn't exist.")

def return_item(borrow_id):
    with sqlite3.connect("library.db") as conn:
        cur = conn.cursor()
        cur.execute("SELECT itemID, dueDate FROM Borrows WHERE borrowID = ?", (borrow_id,))
        row = cur.fetchone()
        if not row:
            print("❌ Invalid borrow ID.")
            return
        item_id, due = row
        cur.execute("UPDATE Borrows SET returnedDate = DATE('now') WHERE borrowID = ?", (borrow_id,))
        conn.commit()
        print("✅ Item returned.")

def donate_item(product_id, type, author, year, genre):
    with sqlite3.connect("library.db") as conn:
        cur = conn.cursor()
        cur.execute("INSERT INTO FutureItems VALUES (?, ?, ?, ?, ?)", (product_id, type, author, year, genre))
        conn.commit()
        print("✅ Donation recorded.")

def find_event(keyword):
    with sqlite3.connect("library.db") as conn:
        cur = conn.cursor()
        cur.execute("SELECT * FROM Events WHERE name LIKE ?", (f"%{keyword}%",))
        return cur.fetchall()

def register_for_event(event_id, user_id):
    with sqlite3.connect("library.db") as conn:
        cur = conn.cursor()
        cur.execute("INSERT OR IGNORE INTO Attends VALUES (?, ?)", (event_id, user_id))
        conn.commit()
        print("✅ User registered for event.")

def volunteer(employee_id, event_id):
    with sqlite3.connect("library.db") as conn:
        cur = conn.cursor()
        cur.execute("INSERT OR IGNORE INTO Volunteering VALUES (?, ?)", (event_id, employee_id))
        conn.commit()
        print("✅ Volunteer recorded.")

def ask_librarian(question):
    print(f"📨 Your question has been sent to the librarian: '{question}'")

# 🧭 Menu Interface
def main():
    while True:
        print("\n📚 LIBRARY SYSTEM MENU")
        print("1. Find an item")
        print("2. Borrow an item")
        print("3. Return an item")
        print("4. Donate an item")
        print("5. Find an event")
        print("6. Register for an event")
        print("7. Volunteer for an event")
        print("8. Ask a librarian")
        print("9. Exit")

        choice = input("Choose an option (1-9): ")

        if choice == "1":
            name = input("Enter a name or author to search: ")
            results = find_item(name)
            if results:
                for row in results:
                    if len(results) == 1:
                        print("\n Found a match!")
                    else:
                        print("\n Found",len(results), "matches!")

                    print(f"📘 ProductID: {row[0]}\nName: {row[1]}\nItemID: {row[6]}\nAvailability: {row[7]}")
            else:
                print("\n🚫 ERROR: No matching items found in the library.")
                print("🔎 Tip: Try a different keyword (name or author)\n")

        elif choice == "2":
            user_id = int(input("Enter your User ID: "))
            item_id = int(input("Enter Item ID to borrow: "))
            borrow_item(user_id, item_id)

        elif choice == "3":
            borrow_id = int(input("Enter Borrow ID: "))
            return_item(borrow_id)

        elif choice == "4":
            product_id = input("Enter product ID: ")
            item_type = input("Enter type (Print Book/CD/etc): ")
            author = input("Enter author: ")
            year = int(input("Enter year: "))
            genre = input("Enter genre: ")
            donate_item(product_id, item_type, author, year, genre)

        elif choice == "5":
            keyword = input("Enter event keyword: ")
            results = find_event(keyword)
            for e in results:
                print(f"📅 EventID: {e[0]}, Name: {e[1]}, Type: {e[2]}, Date: {e[3]}")

        elif choice == "6":
            event_id = int(input("Enter Event ID: "))
            user_id = int(input("Enter your User ID: "))
            register_for_event(event_id, user_id)

        elif choice == "7":
            employee_id = int(input("Enter your Employee ID: "))
            event_id = int(input("Enter Event ID: "))
            volunteer(employee_id, event_id)

        elif choice == "8":
            question = input("What would you like to ask the librarian? ")
            ask_librarian(question)

        elif choice == "9":
            print("👋 Exiting. Have a great day at the library!")
            break

        else:
            print("❌ Invalid choice. Try again.")

if __name__ == "__main__":
    main()
