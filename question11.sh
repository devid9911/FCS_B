if [ ! -d .git ]; then
    echo "Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

git checkout -b branch2

git switch -c branch2

echo "Initial content of file4." > file4

git add file4
git commit -m "Added file4 in branch2"

echo "This is a modification to file4." >> file4

git stash push -m "Saving changes in file4 before switching brances"

git checkout main

git switch main

echo "Switch back to main branch without committing the changes."
echo "You can recover changes using 'git stash pop' when you return to branch2."
