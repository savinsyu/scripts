#!/bin/bash

# Список папок (через пробел)
FOLDERS=(
    "/путь/к/папке1"
    "/путь/к/папке2"
    "/путь/к/папке3"
)

# Имя файла
FILENAME="example.txt"

# Создаём файл в каждой папке
for folder in "${FOLDERS[@]}"; do
    touch "$folder/$FILENAME"
    echo "Создан файл: $folder/$FILENAME"
done
