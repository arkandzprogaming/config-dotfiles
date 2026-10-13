{
  description = "Qt6 C++ Development Environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixgl.url = "github:nix-community/nixGL";
  };

  outputs = { self, nixpkgs, nixgl }:
    let
      system = "x86_64-linux";
      
      # We instantiate our own pkgs and overlay nixGL onto it.
      # This guarantees nixGL and QtCreator share the exact same GLIBC.
      pkgs = import nixpkgs {
        inherit system;
        # Required if you end up needing proprietary Nvidia drivers
        config = { allowUnfree = true; }; 
        overlays = [ nixgl.overlays.default ]; 
      };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        
        nativeBuildInputs = with pkgs; [
          cmake
          ninja
          gcc
          pkg-config
          python3
          qtcreator
          
          # We now pull the wrapper from our perfectly synced overlay
          pkgs.nixgl.auto.nixGLDefault 
        ];

        buildInputs = with pkgs.qt6; [
          qtbase
          qtdeclarative
          qtcharts
          qtvirtualkeyboard
          qttools
          qtsvg
          qtwayland
        ];

        shellHook = ''
          echo "================================================="
          echo "This is the Qt6 Hardware-Accelerated Environment"
          echo "CMake version:  $(cmake --version | head -n 1)"
          echo "GCC version:    $(gcc --version | head -n 1)"
          echo "Python version: $(python3 --version)"
          echo "Qt version:     $(qmake6 -v | grep 'Qt version' | awk '{print $4}')"
          echo "================================================="
          echo "Launch QtCreator by typing: nixGL qtcreator &"
          echo "================================================="
        '';
      };
    };
}
