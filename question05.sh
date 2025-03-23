if [ ! -d .git ]; then
    echo "Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

mkdir -p dir1

echo "This is file2 inside dir1." > dir1/file2

git add dir1/

git status

echo "Directory 'dir1' with file2 has been created and staged."
