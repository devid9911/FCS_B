if [ ! -d .git ]; then
    echo "Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

if ! ls *.py 1> /dev/null 2>&1; then
    echo "No python files found to add."
    exit 0
fi

git add *.py
git commit -m "Committed all Python files"
git log --oneline -1
echo "All Python files have been successfully committed."
