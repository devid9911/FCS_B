if [ ! -d .git ]; then
    echo "Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

if git diff --quiet; then
    echo "No modified files to commit."
    exit 0
fi

git add -u

git commit -m "Committed all modified files"

git log --online -1

echo "All modified files have been successfully committed."
