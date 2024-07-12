{
  description = "Scalable Dev Practices";

  inputs = { 
    nixpkgs.url = "github:nixos/nixpkgs/24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShell = pkgs.mkShell {
          name = "Scalable Dev Practices";
          buildInputs = [
            pkgs.python311
            pkgs.pipenv

            pkgs.actionlint
          ];
          shellHook = ''
            echo "Welcome in $name"
            export FOO="BAR"
            export PS1="\[\e[1;33m\][nix($name)]\$\[\e[0m\] "
          '';
        };
      }
    );
}
