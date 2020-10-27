# Git flow

## Install

To install Git Flow, type in a terminal:

```
# Linux
sudo apt-get install git-flow

# Mac
sudo port install git-flow
```


## Initialisation

Go in the directory containing your clone of the `git-class` repository and type

```
git flow init
```

and press `Enter` until the end of process.

Now check the status of the repository

```
git status
git branch -vv
```

Try to push using

```
git push
```

An error occurs, since the `develop` branch has been created **locally**. Therefore, you need to tell git that you want to push on a **remote `develop` branch**.

```
git push --set-upstream origin develop
git branch -vv
```

## Creation of `feature` branches

Create a feature branch:

```
git flow feature start test-feature
git status
git branch -vv
```

Push the branch to the remote directory:

```
git flow feature publish test-feature
git branch -vv
```

Note: to track a feature branch: ```git flow feature track test-feature```

Add and commit a file called `feature1.txt`.

```
touch feature1.txt
git add .
git commit
ls
git status
```

Create a second feature branch by typing: 

```
git flow feature start second-feature
```

List all the feature branches:

```
git flow feature
```

Add and commit a file called `feature2.txt`.

```
touch feature2.txt
git add .
git commit
ls
git status
```

Close the feature branch by typing:

```
git flow feature finish second-feature
```

Move back to the first feature branch:

```
git flow feature checkout test-feature
```

Finish this feature by typing:

```
git flow feature finish test-feature
```

The `test-feature` branch is automatically merged with the `develop` one. Now push the `develop` branch to the remote repository.

```
git push
```

Check what happened in the `Insight -> Network` page of your repository or by typing:

```bash
git log --all --decorate --oneline --graph
```

Create another feature branch and add two files **using two different commits**.

```
git flow feature start feature-3
touch feature3-A.txt
git add feature3-A.txt
git commit -m "adding file 3A"
touch feature3-B.txt
git add feature3-B.txt
git commit -m "adding file 3B"
```

Now go to your repository GitHub page, switch to the `develop` branch and edit the `README.md` file.

Finish the feature and try to push:

```
git flow feature finish feature-3
git push
```

It fails, since `develop` has been updated remotely. To correct this:

```
git pull
git push
```

In order to do that in a cleaner way, repeat the above steps on another feature branch:

```
git flow feature start feature-4
touch feature4-A.txt
git add feature4-A.txt 
git commit -m "adding file 4A"
touch feature4-B.txt
git add feature4-B.txt
git commit -m "adding file 4B"
```

Edit the `README.md` file directly from GitHub.

To insure that your feature branch is up-to-date relative to the `develop` branch, type:

```
git fetch origin develop:develop
git flow feature rebase
git flow feature finish
```

The first line allows to do a `git pull` on the `develop` branch without using `git checkout` first. The second one merges the `develop` branch into the `feature` one.

If you do a `git push`, you will not have any errors.

**Note: it is highly recommended to extensively use `git fetch origin develop:develop` and `
git flow feature rebase`, to avoid conflicts**

**Warning: Never use `git flow feature rebase` on a branch that has been published on the remote repository!!!!**

## Creation of `release` branch

Create a release branch:

```
git flow release start 1.0.0
```

Publish it to the remote

```
git flow release publish 1.0.0
```

Eventually, edit and add new commits. Then, finish your release as follows:

```
git flow release finish 1.0.0
```

It will update the content of the **local** `master` and `develop` branches. To update the remote repositories:

```
git status
git push
git checkout master
git status
git push
git push --tags
git checkout develop
```

Releases created that way are not exactly releases from a GitHub point of vue. To create a GitHub release,
go to the GitHub release page of your repository and click on `Draft a new release`. Then put the tag number (`1.0.0`) in the `Tag version` area and click on `Publish release`

## Creation of `hotfix` branches.

Create a `hotfix` branch: 

```
git flow hotfix start 1.0.1
```

**Note that the name of the hotfix branch must be a tag number, which is an increment of the latest tag.**

Edit the files and do some commits. 

Finish the `hotfix` by typing:

```
git flow hotfix finish 1.0.1
```

Send the tags, master and develop branches to the remote repository:

```
git push
git checkout master
git push
git push --tags
git checkout develop
```
