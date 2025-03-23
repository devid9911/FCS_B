git clone https://github.com/ian-knight-uofa/git-practice-02.git
git fetch origin
git checkout branch2
git merge origin/branch3
git add .
git commit -m "Merged branch3 into branch2 and resolved conflicts"
git branch -d branch3
echo 'git fetch origin' >> question16.sh
echo 'git checkout branch2' >> question16.sh
echo 'git merge origin/branch3' >> question16.sh
echo 'git add .' >> question16.sh
echo 'git commit -m "Merged branch3 into branch2"' >> question16.sh
echo 'git branch -d branch3' >> question16.sh