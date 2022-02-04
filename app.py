
import sqlite3
import prettytable

con = sqlite3.connect(":memory:")
cur = con.cursor()
sqlite_query = ("""
        CREATE TABLE animals_new
        (Id integer PRIMARY KEY AUTOINCREMENT,
         AnimalType NVARCHAR(50),
         Sex NVARCHAR(50),
         Name NVARCHAR(100),
         DateOfBirth date ,
         Age integer ,
         Weight decimal )
            """)


def print_result(sqlite_query):
    cur.execute(sqlite_query)
    result_query = ('SELECT * from animals')
    table = cur.execute(result_query)
    mytable = prettytable.from_db_cursor(table)
    mytable.max_width = 30
    print(mytable)


if __name__ == '__main__':
    print_result(sqlite_query)