{
  description = "Python Environment inside $HOME/Documents/code-scripts";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      
      # Define custom Python interpreter
      myPython = pkgs.python3.withPackages (ps: with ps; [
        galois
        ipykernel   
        jupyter     
        pandas
        numpy
        matplotlib
        pip
        pipx
        scipy
      ]);
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        
        buildInputs = [
          myPython
        ];

        shellHook = ''
          echo "================================================="
          echo "This is the Python Scripting Environment"
          echo "Python version: $(python3 --version)"
          echo "================================================="
          
          export PATH="$HOME/.local/bin:$PATH"
        '';
      };
    };
}
