Branches in Git
=====================

# Introduction

One main advantage of Git is the use of *branches*, which allow multiple
developments of the same code at the same time.

*Definition: A branch in Git is simply a lightweight movable pointer to
one of thes commits.* 

In the following, the green boxes show different commits of a git repository, and the gray boxes 
show the two branches associated with the repository.

<div align="center">
  <img src="../../presentation_gitTraining/img//git-branch-ter.png" height=200 hspace=100>
  <img src="../../presentation_gitTraining/img//git-branch-bis.png" height=200 >
</div>

The `master` branch points to the `f30ab` commit, while
the `testing` branch points to the `c2b9e` one. 

There is an additional pointer, `HEAD`, which points to the
active branch (here, `testing`).

Source: <https://git-scm.com/book/en/v1/Git-Branching-What-a-Branch-Is>

# Creating a branch

To create a branch: 

```
git checkout -b newbranch
```

It creates a branch called `newbranch` from the **active branch**. To specify another reference branch:

```
git checkout -b newbranch refbranch
```

# Recovering a remote branch

If a branch already exists in the remote directory:

```
git checkout newbranch
```

# Tracking branches

To check that **local branches** are connected with the proper **remote branches**, type:

```
git branch -vv
```

You should see something like:

```
  develop         04ae7eb Merge pull request #1 from JulienLebranchu/master
* feature/nico-md 4a22a7e [origin/feature/nico-md] Merge branch 'feature/nico-md' of github.com:umr-marbec/git-training into feature/nico-md
  master          04ae7eb [origin/master] Merge pull request #1 from JulienLebranchu/master
```

Here, we can see that the **local master** branch follows the **remote master** one. Same for **feature/nico-md**. We also note that the latter is the active 
branch (see the asterisk). You also see that the **develop** branch is not linked with a remote branch. To force the tracking of the local branch:

```
git branch --set-upstream-to=origin/develop
```

Note that the above only shows branches that have been checked-out locally. To list all the branches, use

```
git branch -a
```
 
# Merging branches

To merge a branch (for instance a `develop` branch) to another branch (for
instance the `master` one), two options are offered.

- `merge`: Three-points branch (common ancestor + tips of the two
    branches)

- `rebase`: Compresses all the changes into a single "patch."

<div align="center">
 <img src="../../presentation_gitTraining/img//git-merge-1.png" height=200 hspace=50>
  <img src="../../presentation_gitTraining/img//git-merge-2.png" height=200>
</div>

Source: <https://git-scm.com/book/fr/v1/Les-branches-avec-Git-Rebaser>

A common step is to insure that all branches in the **local repository** are up-to-date.

```
git checkout master
git pull
git checkout develop
git pull
```

To merge the `develop` branch into the `master` branch, you need to be in the `master` one.

```
git checkout master
git merge develop
```

If you want to rebase the `develop` branch into the `master`one:

```
git checkout master
git rebase develop
```

**Warning: In order to avoid bad suprises, make sure that your feature 
branches (`develop`, etc.) are not too different from your main branch (`master`) by merging/rebasing the latter into the former(s)
on a regular basis**


