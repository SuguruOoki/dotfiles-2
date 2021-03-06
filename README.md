# dotfiles

[![CI](https://github.com/IMOKURI/dotfiles/workflows/CI/badge.svg)](https://github.com/IMOKURI/dotfiles/actions?query=workflow%3ACI)

The dotfiles that can be installed by one command

## Feature

- Install Neovim, Git, Python3, Node.js and Go with some packages.
- Clone dotfiles repository.
- Create symbolic link to dotfiles.

## Support

- CentOS/RHEL 7
- Ubuntu 18.04, 20.04

## Requirement

- Packages
  - curl
  - sudo
  - software-properties-common (for Ubuntu)

- Set environment variables if use proxy.

```bash
export http_proxy=<http://proxy.example.com:port>
export https_proxy=<http://proxy.example.com:port>
```

- Enable optional and extra repository. (for RHEL)

```bash
subscription-manager repos --enable rhel-7-server-optional-rpms
subscription-manager repos --enable rhel-7-server-extras-rpms
```

## Installation

```bash
bash -c "$(curl -fsSL https://git.io/imokuri)"
```

## Update

```bash
bash ~/.dotfiles/install
```
