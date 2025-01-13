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
cursor.execute("DROP TABLE IF EXISTS test;")
conn.commit()
sql_statements = [
    """CREATE TABLE IF NOT EXISTS test (
            test_id INTEGER PRIMARY KEY autoincrement, 
            test_name TEXT not null
    );"""]

try:
    with conn:
        cursor = conn.cursor()
        for statement in sql_statements:
            cursor.execute(statement)
        conn.commit()
except conn.Error as e:
    print(e)
conn.close()
