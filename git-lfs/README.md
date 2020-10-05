Large file storage
=====================

# Introduction

Git is not suitable to manage large binary files. Indeed, it will lead to a heavy repository, hence very slow 
cloning and fetching. An alternative is provided by the [Git Large File Storage](https://git-lfs.github.com/) system.

Instead of a binary file, the remote repository will store a text file that points to the remote address of the file. *But nothing
changes from a user perspective*.

**Warning: not all the remote repositories work with Git LFS. GitHub and Gitlab work with Git LFS, but SourceSup not**

# Install

To install Git LFS on your computer, type:

```
git lfs install
```

If Git LFS is not installed, the cloning of a repository that contains Git LFS will not download the binary files but the address files instead.

# Tracking LFS files

In order to track files for LFS, for instance NetCDF files (`.nc`):

```
git lfs track "*.nc"
```

This will create a `.gitattributes`, which you need to add and commit:

```
git commit .gitattributes
```

When done, you can add `.nc` files in the way as before:

```
git add *nc
git commit
```

# List LFS files

To list all the LFS files from a repository:

```
git lfs ls-files
```

It will leads something like

```
0377f02a06 * example/data/data_apecosm.nc
99575fc50f * example/data/data_pisces.nc
319f712f72 * example/data/mesh_mask.nc
a309cac6e9 * example/data/orca2_par.nc
c3b31d7a3e * example/data/orca2_votemper.nc
```

# Untrack files

To untrack a file from LFS:

```
git untrack "*.nc"
```

# LFS on GitHub.

**On GitHub, the free LFS storage limit is 1Gb.** If by mistake, you exceed the storage capacity, LFS will be deactivated and your files
will no longer be accessible. 

To overcome this issue (**use with caution!!!**)


- First, make a `git pull` of all your branches and make a copy of your local Git directory (just in case you loose some files in the process).
- When your remote repository is fully uploaded into your local one, delete it from GitHub manually, then recreate it.
- In your local directory, remove all the files from your Git history using the following command:

```
git filter-branch --prune-empty \
  --index-filter "git rm --cached -f --ignore-unmatch **/*nc" \
  --tag-name-filter cat -- --all
```

- Untrack the LFS files that exceed the storing capacity using `git untrack`
- Re-add the binary files using the `git add` command.
- Push your changes using `git push`



