
Introduction to version control
===============================================

# Version control

Also known as **revision control** or **source control**.

\... "*is the management of changes:*
-   documents
-   computer programs
-   large web sites
-   other collections of information \... "

# Why version control is important?

<div align=center>
    <img src="../../presentation_gitTraining/img//phd_comics.png" width=30%>
</div>

Storing **version** (properly).

-   Saving successive changes ("commit\")
-   Versioning (v0.1)


<div align=center>
<img src="../../presentation_gitTraining/img//storingVersion.jpg"  width=30%>
</div>

**Restoring** previous versions.

<div align=center>
<img src="../../presentation_gitTraining/img//storingVersion2.png" width=30%>
</div>

**Collaborations** (networking).

<div align=center>
<img src="../../presentation_gitTraining/img//networking.png"  width=30%>
</div>

Save **time**.

<div align=center>
<img src="../../presentation_gitTraining/img//version-control.png"  width=40%>
</div>

# Version control software

<div align=center>
<img src="../../presentation_gitTraining/img//controlVersion.png"  width=70%>
</div>





# What is Git?

**Git** is a distributed version control system for tracking changes in
source code during the development of software.

<div align=center>
<img src="../../presentation_gitTraining/img//git_logo.png"  width=30%>
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

# What is GitHub Inc.?

**GitHub** is a web-based hosting service for version control using **Git**.

<div align=center>
<img src="../../presentation_gitTraining/img//github_logos.png"  width=30%>
</div>

-   Access to the control and collaboration features for every
    **project**.

<div align=center>
<img src="../../presentation_gitTraining/img//githubRepo_settings.png" width=30%>
</div>

-   Work with public and private **repositories**.

<div align=center>
<img src="../../presentation_gitTraining/img//githubRepo_features.png" width=30%>
</div>

-   Develop a **networking**.

<div align=center>
<img src="../../presentation_gitTraining/img//githubRepo_networking.png"  width=30%>
</div>
          
-   Source of information.

<div align=center>
<img src="../../presentation_gitTraining/img//github_projects.png" width=30%>
</div>
          
-   **Plans** for enterprise, teams, pro and free accounts.

<div align=center>
<img src="../../presentation_gitTraining/img//github_plans.png">
</div>

-   Is the **largest** host of source code in the world! *(28 million
    users, 57 million repositories (28 million public) - June 2018)*.

<div align=center>
    <img src="../../presentation_gitTraining/img//microsoft-github-800x421.png">
</div>


### Register a GitHub account

-   Create an account in [ GitHub](https://github.com/) is free!
-   Free private repositories
    -   Students, faculty, and educational / research staff: [GitHub Education](https://education.github.com/).
    -   Official nonprofit organizations and charities: [GitHub for Good](https://github.com/nonprofit).

### Register a GitHub account

-   Pay for private repositories

    -   Individual cost is 7 dollars per month: [ GitHub
        Pricing](https://github.com/pricing).

<div align=center>
    <img src="../../presentation_gitTraining/img//github_pricing.jpg">
</div>

### Marbec in GitHub

All the materials of Pole Modelisation's technical \"workshop\" are now
stored in an institutionnal GitHub account:
<https://github.com/umr-marbec>.


<div align=center>
img src="../../presentation_gitTraining/img//github_marbec.png">
</div>

### Institutionnal repositories

GitHub is a private US company. There are also *institutional*
repositories on which Git can be used:

-   [Sourcesup](https://sourcesup.renater.fr/): this is a Renater
    platform (login possible from any French research institute or
    through CRU accounts)

-   [Forge Ifremer](https://forge.ifremer.fr/): very close to SourceSup
    (Ifremer extranet account required)

-   [IRD GitLab](gitlab.intranet.ird.fr): GitLab IRD platform (IRD
    account required).

However, the projects hosted on these repositories may have less
visibility...

### Git clients

Git and Git client **are not** the same! Like R and RStudio is not the
same thing!

Git client:

-   IDE (Integrated development environment)!

-   Make the experience more pleasant providing a richer visual
    representation.

\hfill 
Some example of Git clients:

-   [ SourceTreen](https://www.sourcetreeapp.com/)

-   [ GitKraken](https://www.gitkraken.com/)

-   [ GitUp](https://gitup.co/)

-   [ SmartGit](https://www.syntevo.com/smartgit/)

-   [ git-cola](https://git-cola.github.io/)

-   [ RStudio](https://www.rstudio.com/)

\vspace{3em}
### Git branches

One main advantage of Git is the use of *branches*, which allow multiple
developments of the same code at the same time.

Definition A branch in Git is simply a lightweight movable pointer to
one of thes commits.

<div align="center">
 img src="../../presentation_gitTraining/img//git-branch-ter.png"
</div>

<div align="center">
 ../../presentation_gitTraining/img//git-branch-bis.png"
</div>


In this example, the `master` branch points to the `f30ab` commit, while
the `testing` branch points to the `c2b9e` one. `HEAD` points to the
active branch (here, `testing`).

\vspace{1em}
Source: <https://git-scm.com/book/en/v1/Git-Branching-What-a-Branch-Is>

### Merging branches

To merge a branch (for instance a feature branch) to another branch (for
instance the main one), several options are offered.

-   `merge`: Three-points branch (common ancestor + tips of the two
    branches)

-   `rebase`: Compresses all the changes into a single "patch."

<div align="center">
 img src="../../presentation_gitTraining/img//git-merge-1.png"
</div>

<div align="center">
 img src="../../presentation_gitTraining/img//git-merge-2.png"
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

In summary\...

<div align=center>
<img src="../../presentation_gitTraining/img//05-_2_.pdf"
</div>

Source: <https://www.atlassian.com/git/tutorials/comparing-workflows>

### Thanks for your attention

**Now, let's crack on it!**\

<div align=center>
<img src="../../presentation_gitTraining/img//funny.jpg">
</div>

Source: <https://www.pinterest.fr/pin/447263806724736402/>

### This is the end

<div align=center>
   <img src="../../presentation_gitTraining/img//that_s_all_folks.png">
</div>
    
Source:
[poshpete117.deviantart.com/journal/Thats-All-Folks-427323458/](poshpete117.deviantart.com/journal/Thats-All-Folks-427323458/)
