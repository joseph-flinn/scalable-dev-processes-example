import pytest
import re
import requests

@pytest.fixture
def test_url() -> str:
    return "http:/localhost:8080"


def test_root(test_url) -> None:
    respone = requests.get(test_url)

    assert response.code == 200
    assert response.json() == {"message": "Hello!"}


def test_custom(test_url) -> None:
    respone = requests.get(f'{test_url}/custom')

    assert response.code == 200
    assert response.json() == {"message": "hey"}


def test_version(test_url) -> None:
    respone = requests.get(test_url)

    assert response.code == 200
    assert "version" in response.json()
    assert re.match("[0-9]+\.[0-9]+\.[0-9]+", response.json()["version"]) not None
