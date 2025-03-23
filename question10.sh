if [ ! -d .git ]; then
    echo "Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

if ! git branch --list | grep -q "branch1"; then
    echo "Error: branch1 does not exist. Create it first."
    exit 1
fi

git checkout main
git switch main
git merge branch1 -m "Merge branch1 into main"
git log --oneline -3
echo "branch1 has been successfully merged into main."
