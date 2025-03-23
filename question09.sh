if [ ! -d .git ]; then
    echo "Error: This is nnot a Git repository. Run 'git init' first."
    exit 1
fi

if ! git log --oneline | grep -q .; then
    echo "Error: No commits found on main/master branch. Add and commit a file first."
    exit 1
fi

git branch branch1

git checkout branch1

git switch branch1

echo "This is file3 in branch1." > file3

git add file3
git commit -m "Added file3 in branch1"
git log --oneline -1
echo "Branch1 created, switched to it, file3 added, staged, and committed."
