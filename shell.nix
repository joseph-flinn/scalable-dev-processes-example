with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "dev";
    buildInputs = [
        actionlint
    ];
    shellHook = ''
    '';
}
