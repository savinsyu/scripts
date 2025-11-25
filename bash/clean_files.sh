#!/bin/bash

# Список папок для очистки
folders=(
    "/path/to/folder1"
    "/path/to/folder2"
    "/path/to/folder3"
)

# Удаляем все файлы в каждой папке
for folder in "${folders[@]}"; do
    rm -f "$folder"/*
done
