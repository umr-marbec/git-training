
Introduction to Git Flow
===============================================

# Git workflows

There are several ways to use Git branches (we talk about **workflows**).

-   *Centralized workflow*: one main branch, everyone commit in the same
    place. 

-   *Feature Branch Workflow*: developments are made in dedicated
    branches (feature branches), which are regularly merged into the
    master one.

-   ***Gitflow Workflow***: Strict branching model designed around the
    project release.

Source: <https://www.atlassian.com/git/tutorials/comparing-workflows>

# GitFlow branches

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
    
 <div align="center">
    <img src="Gitflow.png" width=50%>
 </div>
 
 Source: https://blog.engineering.publicissapient.fr/2018/03/28/gitflow-est-il-le-workflow-dont-jai-besoin/
