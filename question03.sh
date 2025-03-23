if [ ! -d .git ]; then
    echo "Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

echo "This is file3.txt" > file3.txt
git add file3.txt
git status
echo "file3.txt has been created and staged successfully."
