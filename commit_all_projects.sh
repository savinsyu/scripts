#!/bin/bash
DATE=$(date)
TEXT="Commit: $DATE"
FLASKPROJECT="flask-project"
FLASK_PROJECT_ONE_TABLE_VERSION="flask-project-one-table-version"
FLASK_PROJECT_REMOTE_DATABASE_VERSION="flask-project-remote-database-version"
JUPYTER_NOTEBOOKS="jupyter-notebooks"
KINO_PROJECT="kino_project"
ML_ADVANCED="ml-advanced"
DS_INTRO="ds-intro"
STAMPS_AND_BADGES="stamps_and_badges"
BASH_SCRIPTS="bash_scripts"
MESSAGE="Коммит успешно отправлен на репозиторий"
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
cd flask-project/
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $FLASKPROJECT"
cd ..
cd flask-project-one-table-version
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $FLASK_PROJECT_ONE_TABLE_VERSION"
cd ..
cd flask-project-remote-database-version
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $FLASK_PROJECT_REMOTE_DATABASE_VERSION"
cd ..
cd jupyter-notebooks
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $JUPYTER_NOTEBOOKS"
cd ..
cd kino_project
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $KINO_PROJECT"
cd ..
cd ml-advanced  
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $ML_ADVANCED"
cd ..
cd ds-intro
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $DS_INTRO" 
cd ..
cd stamps_and_badges
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $STAMPS_AND_BADGES"
cd ..
cd bash_scripts
echo "# bash_random_num $RANDOM" >> README_FOR_COMMIT.md
git add .
git commit -m "$TEXT"
git push
time=$(date +%s)
echo $(($(date +%s)-$time))
sleep 5
echo "$MESSAGE: $BASH_SCRIPTS"