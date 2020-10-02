Github aide-memoire
=====================


<div align="center">
        <img height=100 src="../../presentation_gitTraining/img/logo_psud.jpg">
        <img height=100 src="../../presentation_gitTraining/img/logo_marbec.png">
        <img height=100 src="../../presentation_gitTraining/img/logo_ird.png">
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
>>>>>>> 697f94c9ec5f00b595969e67a9c3f456349c01a0
