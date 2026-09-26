{
  description = "personal flake package environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default = let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    in pkgs.buildEnv {
      name = "my-user-packages";
      paths = with pkgs; [
        bind
        btop
        cmatrix
        curl
        direnv
        gcc
        git
        gnumake
        net-tools
        nmap
        speedtest-cli
        stow
        tmux
        traceroute
        tree
        vim-full
      ];
    };
  };
}
