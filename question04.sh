if [ ! -d .git ]; then
    echo "Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

if git diff --cached --quiet; then
    echo "No staged changes to commit."
    exit 0
fi

git commit -m "Committed staged changes"

git log --oneline -1
echo "Staged changes have been successfully committed."
