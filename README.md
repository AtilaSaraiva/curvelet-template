# Nix python template

This is my personal template for python and nix programming when I don't want to or can't use the poetry2nix template. I use niv for pinning the nixpkgs and I also import an overlay where some custom python packages I write are available.

## Making the development environment available

Using [nix](nixos.org), run:
```
git clone https://github.com/AtilaSaraiva/<repo-name>.git
cd <repo-name>
nix-shell
```
and a shell with all the necessary dependencies will appear.
