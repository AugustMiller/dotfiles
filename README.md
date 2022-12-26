# Dotfiles

Personal collection of configuration files and manifests for getting a new machine up and running for 
basic development work.

## Usage

Install [Brew](https://brew.sh), and ensure it’s available in your path:

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> .zprofile
```

To install or update software from the included `Brewfile`, run:

```sh
make brew
```

Alternatively, the default `make` target will install _all_ prerequisites and packages, including Brew itself.

`make config` will copy specific config files from `config/` into the appropriate locations.

Whenever new software or libraries are necessary, add them to the `Brewfile` based on the type of 
[formula](https://formulae.brew.sh).

:deciduous_tree:
