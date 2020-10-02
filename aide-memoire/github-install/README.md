Github aide-memoire
=====================

# What is GitHub Inc.?

**GitHub** is a web-based hosting service for version control using **Git**.

<div align=center>
<img src="../../presentation_gitTraining/img//github_logos.png"  width=30%>
</div>

- Access to the control and collaboration features for every
    **project**.

<div align=center>
<img src="../../presentation_gitTraining/img//githubRepo_settings.png" width=30%>
</div>

- Work with public and private **repositories**.

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


# GitHub install

## GitHub account

First step is to create a GitHub account [here](https://github.com/join)

Tips about the name account:

-   Use your actual name!
-   Shorter is better than longer!
-   Be as unique as possible!
-   Re-use your name from other context

## Git is already installed?

To check that go to shell (terminal / command line / console) and enter
**which git** to request the path to your Git executable:

```
which git
```

Then enter **git --version** to see its version:

```
git --version
```

If git is not installed YET: See [Install git](https://happygitwithr.com/install-git.html) to follow the correct
steps to install git according your system

## Introduce yourself to Git

Let **git** to know about you, following this simple configuration
steps!

```
# Example
git config --global user.name "Criscely Lujan"
git config --global user.email "criscelylujan@gmail.com"
git config --global core.editor vim
git config --global --list
```

-   **user.name** can be your username. Your commits will be labelled
    with this name, so this should be informative!

-   **user.email** must be the email that you use to sign up for GitHub.

-   **core.editor** There are diverse options of [Git editor](http://swcarpentry.github.io/git-novice/02-setup/).

## How authenticating yourself with GitHub

There are two options of protocols for secure communication working over
a computer network!

### Hypertext Transfer Protocol Secure (HTTPS)

If you plan to work using HTTPS protocol, you can follow [Cache
credential for
HTTPS](https://happygitwithr.com/credential-caching.html#credential-caching)
for more information.

### SSH

If you plan to work using SSH protocol, you can follow [Set up keys
for SSH](https://happygitwithr.com/ssh-keys.html#ssh-keys) for more
information.
