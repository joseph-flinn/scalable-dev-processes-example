with import <nixpkgs> {};
let
  pythonEnv = python311.withPackages(ps: [
    ps.fastapi
    ps.uvicorn
    ps.requests

    ps.black
    ps.pytest
  ]);
in mkShell {
  packages = [
    pipenv
    python311
    pythonEnv
  ];
}

