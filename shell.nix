{ sources ? import ./nix/sources.nix }:
with import sources.nixpkgs {
  overlays = [
    (import sources.myNixPythonPackages)
  ];
};

let
  my-python-packages = python-packages: with python-packages; [
    matplotlib
    curvelops
    numpy
    pooch
    # other python packages you want
  ];
  python-with-my-packages = python3.withPackages my-python-packages;
in
mkShell {
  buildInputs = [
    python-with-my-packages
    jupyter
  ];

  shellHooks = ''
  '';
}
