{
  description = "ESP-IDF v5.5.4 Development Environment";

  inputs = {
    # Using the unstable channel ensures we get up-to-date versions of CMake and Ninja
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        
        # These are the exact Linux prerequisites listed in the Espressif v5.5.4 docs
        # Installation: https://docs.espressif.com/projects/esp-idf/en/v5.5.4/esp32/get-started/linux-macos-setup.html
        buildInputs = with pkgs; [
          git
          wget
          flex
          bison
          gperf
          python3
          cmake
          ninja
          ccache
          libffi
          openssl
          dfu-util
          libusb1
          
          picocom 
        ];

        shellHook = ''
          echo "================================================="
          echo "This is the ESP-IDF Toolchain Environment"
          echo "Git version:    $(git --version)"
          echo "Python version: $(python3 --version)"
          echo "CMake version:  $(cmake --version | head -n 1)"
          echo "Ninja version:  $(ninja --version)"
          echo "================================================="
        '';
      };
    };
}
