#! /bin/bash/

#FILE_TO_ADD="/path/to/file.txt"




# Set the commit message
COMMIT_MESSAGE="Added file to repository"

# Set the name and email for git
GIT_NAME="Vikash-8090-Yadav"
GIT_EMAIL="yadav621gzp@gmail.com"

 git clone "https://github.com/Vikash-8090-Yadav/StreakMaintain.git"

cd StreakMaintain

touch del.txt

echo hey >del.txt

cat del.txt 

git config user.name "Vikash"
git config user.email "yadav621gzp@gmail.com"

git add .

git status

# Commit the changes
git commit -m "Added"

# Push the commit to the remote repository
git push https://github.com/Vikash-8090-Yadav/StreakMaintain.git

# Set the repository URL
#REPO_URL="git@github.com:your_username/your_repository.git"


