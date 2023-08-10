# My opinionated dotfiles

I don't recommend cloning this repo and opting into my way of doing things,
unless you intend to my dotfiles as a foundation for making something that fits
your needs and desires.

Don't fork the repo, instead clone/download the repo and copy whatever files or
blocks of configuration makes sense to you.

## The setup

I use [Chezmoi][chezmoi] to power my dotfiles system. I've tried a bunch of
similar solutions, but Chezmoi is without a doubt the most flexible and
user-friendly tool for managing configurations files. Chezmoi ships as a single,
standalone executable (written in Go), and it supports templating, integrations
with tools such as 1Password, age, etc.

The easiest way to experiment with my dotfiles is to run the following command:

```console
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply thomasjo
```

That command downloads and installs the `chezmoi` executable, clones this repo
into `~/.local/share/chezmoi`, and applies my dotfiles to your system. Be aware
that this might override any existing configuration files that have the same filenames unless you pay attention.

You can also install Chezmoi using e.g., `brew install chezmoi`. For all of the package manager options available, see the [Chezmoi install][install] page.

If you've installed Chezmoi using your favorite package manager, run the
following command instead of the one shown initially:

```console
chezmoi init --apply thomasjo
```

I highly recommend reading the [Chezmoi quick start][quick-start], as well as
skimming through the [Chezmoi user guide][user-guide] to familiarize yourself
with "daily" operations, Chezmoi terminology, etc.


<!-- References -->
[chezmoi]: https://www.chezmoi.io/
[install]: https://www.chezmoi.io/install/
[quick-start]: https://www.chezmoi.io/quick-start/
[1password]: https://1password.com/
[age]: https://github.com/FiloSottile/age
[user-guide]: https://www.chezmoi.io/user-guide/command-overview/
