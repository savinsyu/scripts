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
with open('files/insert_generation_data.sql', 'w') as file:
    file.write('INSERT INTO test(test_name)\n')
    file.write('VALUES \n')
    maker_list = ['HP', 'Samsung', 'Acer', 'ASUS', 'Intel', 'AMD', 'Ford', 'Toyota']
    values = []
    for code, i in enumerate(range(1, 101), start=1):
        values.append(
            f'("{random.choice(maker_list)}"'
            f')'
        )

    # Чтобы в конце не стояла запятая и код корректно сработал
    file.write(',\n'.join(values) + ';')
with open('files/insert_generation_data.sql', 'r') as file:
    conn.executescript(file.read())  # Команды отправляются на выполнение!
    conn.close()