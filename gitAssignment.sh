# Create a private github repo named "i-am-a-git-noob"

# Create a new repository on local in an empty directory (NOTE: do not clone)
mkdir i-am-a-git-noob
git init
# Ques: What changes did you observe in the current directory after initializing local repo?

# Point remote of your local git repo to the newly created repo on github 
git remote add origin https://github.com/hraj-syvora/i-am-a-git-noob.git
# Print current git configs on terminal
git config --local --list
# Update git config with your name and email address (only for current repository)
git config --local user.name "Harsh Raj"
git config --local user.email "hraj@qodeleaf.com"
# Create a file named "test1.txt"
touch test1.txt
# Added line with text "first line in file" in "test1.txt".
echo first line in file >> test1.txt
# Push this file to your github repo.
git add test1.txt
git commit -m "First commit"
git push -u origin main
# Append line with text "second line in file" in "test1.txt".
echo second line in file >> test1.txt
# Add file to the staging area.
git add test1.txt
# Check the status of the file in all staging area
git status 
# Append line with text "Third line in file" in "test1.txt". (Note status of files across different areas).
echo third line in file >> test1.txt
# Remove "test1.txt" from the staging area.
git reset HEAD test1.txt
# Create commit with message "My First Commit"
git commit -m "My First Commit"
# Push commit to the remote repo 
git push
# NOTE: checklist commits pushed to the remote
git commit --amend -m "My Second Commit"
# Update message of last commit "My First Commit" to "My Second Commit" (without creating a new commit)
git push --force
# Push commit with the updated message to the remote repo
git diff HEAD~1 HEAD
# Check the difference between the last and second last commits.
git revert HEAD
# Revert the last commit and check the updated commit logs history.
echo Fourth line in file >> test1.txt
# Append line with text "Fourth line in file" in "test1.txt" and commit it.
echo Fifth line in file >> test1.txt
git add test1.txt
git commit --amend --noedit
# Update the last commit such that the "test1.txt"  also contains "Fifth line in file" (without creating a new commit)
git push --force
# Push the updated commits to the remote repository
echo sixth line >> test1.txt
# Append some content in "test1.txt" file
git pull 
# Pull all the content from remote repository to local repository
git clone https://github.com/hraj-syvora/i-am-a-git-noob.git
# Clone the remote repository to some other directory in your local system.