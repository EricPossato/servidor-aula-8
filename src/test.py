import sqlite3

#read quiz.db
conn = sqlite3.connect('quiz.db')
cursor = conn.cursor()
cursor.execute('Select * from USER')
rows = cursor.fetchall()
for row in rows:
    print(row)
conn.close()

