#!/bin/bash
tar -acf ~/Downloads/flask-remote.zip ~/flask-remote && 
sleep 5s
tar -acf ~/Downloads/scripts.zip ~/scripts && 
sleep 5s
cp ~/Downloads/scripts.zip /g/Documents\ and\ files/repo &&
sleep 5s
cp ~/Downloads/flask-remote.zip /g/Documents\ and\ files/repo &&
sleep 5s
cp ~/Downloads/scripts.zip /o/repo &&
sleep 5s
cp ~/Downloads/flask-remote.zip /o/repo &&
sleep 5s
rm ~/Downloads/scripts.zip &&
sleep 5s
rm ~/Downloads/flask-remote.zip