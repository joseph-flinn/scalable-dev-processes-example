![CI - main](https://github.com/joseph-flinn/scalable-dev-processes-example/actions/workflows/on-merge.yml/badge.svg?branch=main)
# Scalable Dev Processes Example

## Requirements
- pipenv
- docker


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
