# Practical session

The aim of the current session is to learn how to work on GitHub.

## Repository creation

- Create a `git-class` repository on your personal account following the given [steps](https://github.com/umr-marbec/git-training/tree/master/github)

When this is done, clone the repository either using HTTPS or SSH

```bash
git clone git@github.com:barriern/git-class.git
git clone https://github.com/barriern/git-class.git
```

- Go in the directory and type:

```bash
git status
git remote -vv
git branch -vv
```

- Add a `README.md` file by typing:

```bash
touch README.md
git status
```

- Add the file to the index:

```bash
git add README.md
git status
```

- Commit the file by typing:

```bash
git commit
``` 

Add a commit message, for instance `Create README.md`. Then check status

```bash
git status
``` 

- Send the changes to

