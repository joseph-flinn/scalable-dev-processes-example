![CI - main](https://github.com/joseph-flinn/scalable-dev-processes-example/actions/workflows/CI-main.yml/badge.svg?branch=main)
# Scalable Dev Processes Example

## Requirements
- Python 3.11 (with pyenv)
- pipenv
- docker

The Python dependencies are set up for Nix-OS in `shell.nix`

## Development

### Setup
```
pipenv install
pipenv install --dev
```

### Testing
```
pipenv run pytest
```

### Running Api
```
pipenv shell
uvicorn src.app:app
```
