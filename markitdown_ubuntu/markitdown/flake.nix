{
  description = "Environment for Python tool markitdown";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      
      # Define custom Python interpreter
      myPython = pkgs.python3.withPackages (ps: with ps; [
        ipykernel   
        markitdown[all]
      ]);
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        
        buildInputs = [
          myPython
          pkgs.fastfetch
          pkgs.ffmpeg-headless
          pkgs.yt-dlp
        ];

        shellHook = ''
          echo "================================================="
          echo "This is the Nix Environment for Markitdown and other tools"
          echo "Python version: $(python3 --version)"
          echo "Markitdown version: $(markitdown --version)"
          echo "yt-dlp version: $(yt-dlp --version)"
          echo "================================================="
        '';
      };
    };
}
