. ./clean.sh

# First commit

git init

touch README.md
git add README.md
git commit -m "First Commit"

# Second commit
echo "# Readme of git training" >> README.md
touch LICENCE
git add LICENCE README.md
git commit -m "Second commit"

# Revert a commit

#commit=`git tree | grep "Second commit" | sed "s/Second commit//" | sed "s/(HEAD -> master)"// | sed "s/\*//"`
#git revert $commit

# Git LFS

touch data.csv
echo "Year,Size,Species" >> data.csv
git lfs track "*.csv"
git add .gitattributes data.csv
git commit -m "Third commit"

# Tags + update

echo "2022,26.8,SkipJack" >> data.csv
echo "## Version v1.0.0" >> README.md
git add data.csv README.md
git commit -m "Fourth commit"
git tag "v1.0.0"

exit

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

# Delete a branch

git checkout master
git branch -d develop
git branch -D feat-com
