from flask import Blueprint, redirect, url_for, render_template

from modules import connect

conn = connect.get_db_connection()


def create_tables():
    sql_statements = [
        """CREATE TABLE IF NOT EXISTS tuple (
        task_id INTEGER PRIMARY KEY AUTOINCREMENT,
        task_name TEXT NOT NULL,
        task_description TEXT NOT NULL,
        task_status TEXT NOT NULL DEFAULT Новая
        );"""]

    try:
        with conn:
            cursor = conn.cursor()
            for statement in sql_statements:
                cursor.execute(statement)
            conn.commit()
    except connect.Error as e:
        print(e)


if __name__ == '__main__':
    create_tables()
