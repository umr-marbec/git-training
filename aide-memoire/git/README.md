
Introduction to GIT
===============================================

# What is Git?

**Git** is a distributed version control system for tracking changes in
source code during the development of software.

<div align=center>
<img src="../../presentation_gitTraining/img//git_logo.png"  width=20%>
</div>

# Why use Git?

-   **Popular and successful**
    -   Active development
    -   Fast
-   **Distributed**
    -   Work online and offline
    -   Collaborate with large groups
-   **Tracks any type of file**
    -   Works best with text
-   **Branching**
    -   Smarter merges
    
# Concepts

<div align="center">
 <img src="Git-commands.png">
</div>

As shown in the figure, a Git repository is made of:
- A **local workspace**, which is the content of your working directory.
- A **local repository**, which contains **locally** all the history of your files.
- A **remote repository**, which contains **remotely** all the history of your files.

# Git commands

Git commands allow to communicate among these three parts of the git repository. 

## From the remote repository

- `git clone` allows to download the **remote repository** into your **local one** and put the content into your **workspace**. This is the first thing to do.
- `git fetch` allows to update the **local repository** from the **local repository**
- `git checkout` updates the **workspace** from the **local repository**
- `git pull` does a `git fetch` and a `git clone`, therefore updates both the **local repo.** and the **workspace** from the **remote repository** 

## To the remote repository

If you have modified the files in your **workspace**:
- `git add` allows to select the files that will be sent to the **local** and eventually to the **remote** directory. These files are stored in an **index**. 
- `git commit` allows to send the files from the **index** to the **local repository**
- `git push` allows to send the files from the **local** to the remote **repository**

# Git clients

Git and Git client **are not** the same! Like R and RStudio is not the same thing! They are just tools that help you manipulate Git repositories

Git client:

-   IDE (Integrated development environment)!
-   Make the experience more pleasant providing a richer visual
    representation.

Some example of Git clients:

- [SourceTreen](https://www.sourcetreeapp.com/)
- [GitKraken](https://www.gitkraken.com/
- [GitUp](https://gitup.co/)
- [SmartGit](https://www.syntevo.com/smartgit/)
- [git-cola](https://git-cola.github.io/)
- [RStudio](https://www.rstudio.com/)
- [TortoiseGit](https://tortoisegit.org/)


<!--
### Git branches

One main advantage of Git is the use of *branches*, which allow multiple
developments of the same code at the same time.

Definition A branch in Git is simply a lightweight movable pointer to
one of thes commits.

<div align="center">
 <img src="../../presentation_gitTraining/img//git-branch-ter.png">
</div>

<div align="center">
 <img src="../../presentation_gitTraining/img//git-branch-bis.png">
</div>


In this example, the `master` branch points to the `f30ab` commit, while
the `testing` branch points to the `c2b9e` one. `HEAD` points to the
active branch (here, `testing`).

\vspace{1em}
Source: <https://git-scm.com/book/en/v1/Git-Branching-What-a-Branch-Is>

### Merging branches

To merge a branch (for instance a feature branch) to another branch (for
instance the main one), several options are offered.

- `merge`: Three-points branch (common ancestor + tips of the two
    branches)

- `rebase`: Compresses all the changes into a single "patch."

<div align="center">
 <img src="../../presentation_gitTraining/img//git-merge-1.png">
</div>

<div align="center">
 <img src="../../presentation_gitTraining/img//git-merge-2.png">
</div>

Source: <https://git-scm.com/book/fr/v1/Les-branches-avec-Git-Rebaser>


### Git workflows

There are several ways to use Git branches (we talk about
**workflows**).

-   *Centralized workflow*: one main branch, everyone commit in the same
    place.
-   *Feature Branch Workflow*: developments are made in dedicated
    branches (feature branches), which are regularly merged into the
    master one.

-   ***Gitflow Workflow***: Strict branching model designed around the
    project release.

Source: <https://www.atlassian.com/git/tutorials/comparing-workflows>

GitFlow branches

GitFlow workflow contains two main branches:

-   `master`: official release history. Branch which is shared to the
    world!

-   `develop`: integration branch for features

It also contains additional temporal branches:

-   `feature`: feature branches (one for each new feature to add to the
    code)

-   `release`: branch created when enough features have been added (new
    version of the code) to develop

-   `hotfix`: branch for maintenance and bug correction of the
    production release
-->
