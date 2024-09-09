import sqlite3

#run quiz.sql to create the database
with open('quiz.sql', 'r') as f:
    sql = f.read()
    conn = sqlite3.connect('quiz.db')
    conn.executescript(sql)
    conn.commit()
    conn.close()
    print("Database initialized")
