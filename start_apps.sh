#!/bin/bash
# Запускается 1-е приложение следующим скриптом. Указывается путь исполняемой программы и путь к самому приложению.
~/AppData/Local/Programs/Python/Python312/python.exe ~/flask-mysql-project/app.py &
# Затем запускается 2-е приложение
~/AppData/Local/Programs/Python/Python312/python.exe /p/s.savin/flask-base/app.py &
# И наконец запускается 3-е приложение
~/AppData/Local/Programs/Python/Python312/python.exe /p/s.savin/flask-project-full/app.py &