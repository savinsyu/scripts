import pymysql.cursors

def get_db_connection():
    conn = pymysql.connect(host='localhost',
                           port=3306,
                           user='root',
                           password='1',
                           database='flask-project-remote-database-version',
                           charset='utf8',
                           cursorclass=pymysql.cursors.DictCursor)
    return conn


def close_db_connection(conn):
    conn.close()

conn = get_db_connection()
cursor = conn.cursor()
sql_statements = [('Тестовая запись №1',),
                    ('Тестовая запись №2',),
                    ('Тестовая запись №3',),
                    ('Тестовая запись №4',),
                    ('Тестовая запись №5',),
                    ('Тестовая запись №6',),
                    ('Тестовая запись №7',),
                    ('Тестовая запись №8',),
                    ('Тестовая запись №9',),
                    ('Тестовая запись №10',),
                    ('Тестовая запись №11',),
                    ('Тестовая запись №12',),
                    ('Тестовая запись №13',),
                    ('Тестовая запись №14',),
                    ('Тестовая запись №15',),
                    ('Тестовая запись №16',),
                    ('Тестовая запись №17',),
                    ('Тестовая запись №18',),
                    ('Тестовая запись №19',),
                    ('Тестовая запись №20',)]
cursor.executemany('INSERT INTO test (test_name) VALUES (?)', sql_statements)
conn.commit()
conn.close()
