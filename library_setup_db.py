import sqlite3
import os

def setup_database():
    if os.path.exists("library.db"):
        os.remove("library.db")

    with open("library_schema.sql", "r") as schema_file:
        schema_sql = schema_file.read()

    with sqlite3.connect("library.db") as conn:
        cursor = conn.cursor()
        cursor.executescript(schema_sql)

    with open("populate_tables.sql", "r") as data_file:
        data_sql = data_file.read()

    with sqlite3.connect("library.db") as conn:
        cursor = conn.cursor()
        cursor.executescript(data_sql)

    print("✅ Database created and populated.")

if __name__ == "__main__":
    setup_database()
