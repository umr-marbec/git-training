# Git

The aim of the current session is to learn how to work on GitHub.

# Creation of a repository

Create a `git-class` repository on your personal account following the given [steps](https://github.com/umr-marbec/git-training/tree/master/github)

When this is done, clone the repository either using HTTPS or SSH: 

```
git clone git@github.com:barriern/git-class.git 
# git clone https://github.com/barriern/git-class.git
```

# First commit

Go in the directory and type:

```
git status
git remote -vv
git branch -vv
```

Add a `README.md` file by typing:

```
touch README.md
git status
```

Add the file to the index:

```
git add README.md
git status
```

Commit the file by typing:

```
git commit
``` 

Add a commit message, for instance `Create README.md`. Then check status

```
git status
``` 

Send the changes to the remote repository

```
git push
git status
git branch -vv
```

# Fetch and Pull

Visit the page of your repository and refresh. You should see the `README.md` file. From the web page, click on the `Add file -> Create new file` and type `LICENSE`. Then choose a license template, click on `Review and submit` and commit to the main branch (`master` or `main`)

Go back to terminal and type:

```
echo "# README title" >> README.md
git status
```

Add and commit your file, as done previously using `git add` and `git commit`. To go quick, you can type:

```
git commit README.md  # does a add and a commit in one shot
```

Try to push your changes to the remote using `git push`. The push will fail, since the remote repository contains work that has not been updated into your local repository.

To update your local repository, type:

```
git fetch
git status
ls
```

You will see that the LICENSE file is not yet in your local workspace. This is normal, since it `fetch` puts it into the **local repository**. To update the workspace by merging your local commit and the, type:

```
git pull
ls
```

A commit will be automatically created. It's goal is to merge the local commits (the update of the `README.md` file) with the one done in GitHub (the creation of the `LICENSE` file). Now type:

```
git status
```

You will see that the new commit was only made locally, and need to be update to the remote one:

```
git push
```

Check what happened in the `Insight -> Network` page of your repository or by typing:

```bash
git log --all --decorate --oneline --graph
```

**Note: `git pull` is a combination of two operations: `git fetch` and `git merge`. In the above, the `git fetch` is therefore unnecessary**
