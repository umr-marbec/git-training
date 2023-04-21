# First commit

rm -rfv .git
rm -rfv LICENCE README.md

git init

touch README.md
git add README.md
git commit -m "First Commit"

# Second commit
echo "# Readme of git training" >> README.md
touch LICENCE
git add LICENCE README.md
git commit -m "Second commit"

# 3rd commmit

git checkout -b develop
echo "## Heading 1 " >> README.md
git add README.md
git commit -m "Third commit"

# Switching branch

git checkout master
echo "Some text" >> LICENCE
git add LICENCE
git commit -m "Fourth commit"

# Merging

git merge develop -m "merge-develop"

# Branch from branch
git checkout -b feature develop
touch script.R
git add script.R
git commit -m "Fifth commit"

# Branch from commit

commit=`git tree | grep "Second commit" | sed "s/Second commit//" | sed "s/\*//"`
echo $commit
git checkout -b feat-com $commit
touch script.py
git add script.py
git commit -m "Sixth commit"

# Revert commit
commit=`git tree | grep "Sixth commit" | sed "s/Sixth commit//" | sed "s/\*//" | sed "s/(HEAD -> feat-com)//"`
git revert $commit 
