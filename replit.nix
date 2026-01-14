{ pkgs }: {
  deps = [
    pkgs.gut
    pkgs.gh
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}