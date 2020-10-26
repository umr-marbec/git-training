version="6"

# Creation of first feature branch
git flow feature start feat${version}A
touch feat-${version}A1.txt
git add feat-${version}A1.txt 
git commit -m "feat-${version}A1.txt" feat-${version}A1.txt 
touch feat-${version}A2.txt
git add feat-${version}A2.txt 
git commit -m "feat-${version}A2.txt" feat-${version}A2.txt 
git flow feature publish

#git flow feature finish feat${version}B
#git push
#git flow feature checkout feat${version}A
#git flow feature finish feat${version}A
