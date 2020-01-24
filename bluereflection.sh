#!/bin/bash
cd "SAVEDATA"
printf "===== Checking local repository status =====\n"
git status
printf "Pulling from BLUE REFLECTION repository to " && pwd
printf "\n===== Starting pull sequence =====\n"
git pull origin master
printf "\n===== Starting push sequence =====\n"
git add .
git commit -m "Saves updated"
git push origin master
printf "\n*------------------*"
printf "\n|Cron job complete!|\n*------------------*\nTerminal will close in 5 seconds..." && sleep 5