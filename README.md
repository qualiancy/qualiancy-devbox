# Qualiancy Devbox

> Building a better tomorrow.

The Qualiancy Devbox is a `veewee` project that will initialize a [vagrant](http://www.vagrantup.com/) box
that can be used as the basis for a local development environment. It contains a number of enhancements beyond the
standard veewee ubuntu boxes.

#### Base Features

- Ubuntu 12.10 Server AMD64
- Ruby 1.9.3 patch-286
- RubyGems 1.8.24
- Chef (from Gem)
- Puppet (from Gem)

#### Additional Features

- git-core
- [dtrace4linux](https://github.com/dtrace4linux/linux) version `20130205a`
- [planned] zsh, vim, tmux, and custom profiles

#### Related Projects

- None

## Usage

#### Local Requirements

- [RVM](https://rvm.io/rvm/install/) 1.18.5 or greater
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads) 4.2 or greater

#### Getting Started

1. clone repo

    $ git clone 

2. initialize local rvm

    $ cd my-devbox

RVM should detect local `.rvmrc` and initialize the gemset. You may need to confirm.

3. start build cycle

This project uses `make`.

    $ make devbox BOX=my-devbox

This will download all veewee dependencies (such as isos) and begin the build build cycle. Upon completion
and validation, the box will be added to vagrant as your `BOX` name. If you did not specify one 
`qualiancy-devbox` will be used.

#### Upgrading

1. clean previous version

If you want to dispose or upgrade your devbox, you the `make clean` command. You will need to use the same
`BOX` name that was used to create.

    $ make clean BOX=my-devbox

2. pull the latest version

    $ git pull

3. re-initialize the gemset

    $ cd ..
    $ cd my-devbox

4. make

View the new README for possible changes.
