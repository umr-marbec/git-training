Continuous integration
==========================

As code complexity grows, it is important to set-up tools that allow to automatically run a series of test. This is
the goal of [GitHub Actions](https://docs.github.com/en/free-pro-team@latest/actions).

# Concepts

GitHub actions concepts are described [here](https://docs.github.com/en/free-pro-team@latest/actions/learn-github-actions/introduction-to-github-actions)
- One repository can have several workflows (one for R build, one for Java build for instance).
- Each `workflow` is started following an event (a push on the repository for instance)
- Each `worklow` is a succession of `jobs`
- Each `job` is a succession of `steps`

# GitHub action files

A GitHub action is created when a `.yml` file is created in the `.github/workflows` directory of your repository. To create an action file using predefined templates, go to your repository GitHub page. Click on the `Actions` button. You will come up on a page suggesting different GitHub Action templates depending on your project (Python, R, Java, etc.).

<div align="center">
  <img src="capture_actions.png">
</div>

The beginning of the file is as follows:

```
name: r-build

on: [push]

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  r-build:
    runs-on: ubuntu-latest
    steps:
```

In this case, the workflow `r-build` starts on `push`, it contains one job (`r-build`, which runs on `ubuntu`).

The following must be the different steps of the job (cf. below for some steps).

**Notes:**
- It is advised that each workflow contains a single job.
- It is advised that the `workflow` and `jobs` names are consistent, **and contains no spaces**

# Some steps 

- To checkout the repository: 
```
- uses: actions/checkout@v2
```
- To install a Java environment:
```
  - name: Set up JDK 1.8
        uses: actions/setup-java@v1
        with:
          java-version: 1.8
```
- To install an R environment:
```
      - name: R install
        uses: r-lib/actions/setup-r@master
```
- To install some R packages
```
      - name: Install Osmose dependencies
        run: install.packages(c("rlist", "knitr", "rmarkdown", "stringr", "ncdf4", "mgcv", "fields"), repos="http://cran.us.r-project.org")
        shell: Rscript {0}
```
The R packages will be installed in `/home/runner/work/_temp/Library`

- To install Aptitude packages
```      - name: Install NetCDF and Latex
        run: sudo apt-get update && sudo apt-get install -yq libnetcdf-dev texlive-latex-base texlive-fonts-recommended texlive-fonts-extra
```
        
 # Caching
 
 In order to make it more efficient, there is the possibility to cache some files (for instance, package dependencies, etc.). 
 
 This is done by adding the following:
 
 ```
       - name: Cache R dependencies
        id: r-dep
        uses: actions/cache@v2
        env:
            cache-name: r-dep-modules
        with:
            path: /home/runner/work/_temp/Library
            key: ${{ runner.os }}-build-${{ env.cache-name }}-${{ hashFiles('**/DESCRIPTION') }}
            restore-keys: |
                ${{ runner.os }}-build-${{ env.cache-name }}-
                ${{ runner.os }}-build-
                ${{ runner.os }}-
```  

You can decide to skip some actions depending on whether the cache was restored or not. This is done by adding a `if` statement:

```
if: steps.r-dep.outputs.cache-hit != 'true'
```
Note that in this case, `r-dep` is the `id` of the caching action.

```
      - name: Install Osmose dependencies
        if: steps.r-dep.outputs.cache-hit != 'true'
        run: install.packages(c("rlist", "knitr", "rmarkdown", "stringr", "ncdf4", "mgcv", "fields"), repos="http://cran.us.r-project.org")
        shell: Rscript {0}
```
                
Some examples are provided [here](https://github.com/actions/cache).
 
