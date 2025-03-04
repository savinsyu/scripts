#!/bin/bash
ERROR_COLOR="\033[31m"
RESET_COLOR="\033[0m"
SUCCESS_COLOR="\033[32m"
ECHO "Пакуем Wiki проект в папку загрузок и дадим покурить 5 секунд после компьютеру."
tar -acf ~/Downloads/wiki-project.zip ~/wiki-project && 
sleep 5s
ECHO "Пакуем scripts в папку загрузок и дадим отдохнуть 5 секунд после компрьютеру."
tar -acf ~/Downloads/scripts.zip ~/scripts && 
sleep 5s
ECHO "Переносим архивы на диск g в папку repo и подчищаем их из папки загрузок."
cp ~/Downloads/scripts.zip /g/repo &&
cp ~/Downloads/wiki-project.zip /g/repo &&
cp ~/Downloads/scripts.zip /j/repo &&
cp ~/Downloads/wiki-project.zip /j/repo &&
cp ~/Downloads/scripts.zip /e/repo &&
cp ~/Downloads/wiki-project.zip /e/repo &&
rm ~/Downloads/scripts.zip &&
rm ~/Downloads/wiki-project.zip
ECHO -e "${SUCCESS_COLOR}Проверим наличие интернета, пинганув Google!)))${RESET_COLOR}"
if ping google.com
then
	ECHO -e "${SUCCESS_COLOR}Отлично соединение есть, приступим отправлять коммиты на репозитории!${RESET_COLOR}"
	DATE=$(date)
	TEXT="Pipeline-commit: $DATE"
	WIKI_PROJECT="wiki-project" 
	SCRIPTS="scripts"
	MESSAGE="Пайплайн-коммит успешно отправлен на репозиторий"
	FINISH="Все пайплайн-коммит успешно отправлены на репозитории!"
	cd ~/scripts
  echo "Последний пайплайн-коммит случился: $DATE" >> log_commit_$SCRIPTS.txt
	git add .
	git commit -m "$TEXT"
	git push
	ECHO -e "${SUCCESS_COLOR}$MESSAGE: $SCRIPTS${RESET_COLOR}"
	cd ~/wiki-project
	echo "Последний пайплайн-коммит случился: $DATE" >> log_commit_$WIKI_PROJECT.txt
	git add .
	git commit -m "$TEXT"
	git push
	ECHO -e "${SUCCESS_COLOR}$MESSAGE: $WIKI_PROJECT${RESET_COLOR}"
	ECHO -e "${SUCCESS_COLOR}$FINISH${RESET_COLOR}"
else
  ECHO -e "${ERROR_COLOR}Нет интернета!${RESET_COLOR}"
fi
