if [ ! -d .git ]; then
    echo "Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

git checkout branch2
git switch branch 2

if git stash list | grep -q "branch2"; then
   git stash pop
else
   echo "No stashed changes found for branch2."
   exit 1
fi
git add .
git commit -m "Restored and committed previously uncommitted changes"
git log --oneline -1
echo "Successfully restored, staged, and committed uncommitted changes in branch2."
