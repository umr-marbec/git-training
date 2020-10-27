feat_label="1"

# Creation of first feature branch
git flow feature start feat${feat_label}A
touch feat-${feat_label}A.txt
git add feat-${feat_label}A.txt 
git commit -m "feat-${feat_label}A.txt" feat-${feat_label}A.txt 
touch feat-${feat_label}B.txt
git add feat-${feat_label}B.txt 
git commit -m "feat-${feat_label}B.txt" feat-${feat_label}B.txt 
