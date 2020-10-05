Branches in Git
=====================

# Introduction

One main advantage of Git is the use of *branches*, which allow multiple
developments of the same code at the same time.

*Definition: A branch in Git is simply a lightweight movable pointer to
one of thes commits.* 

In the following,

<div align="center">
 <img src="../../presentation_gitTraining/img//git-branch-ter.png" width=30% hspace=50>
  <img src="../../presentation_gitTraining/img//git-branch-bis.png" width=30% >
</div>

In this example, the `master` branch points to the `f30ab` commit, while
the `testing` branch points to the `c2b9e` one. `HEAD` points to the
active branch (here, `testing`).

Source: <https://git-scm.com/book/en/v1/Git-Branching-What-a-Branch-Is>

# Commands related to branches

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
