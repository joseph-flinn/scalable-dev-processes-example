import os
import pytest
import re
import requests

@pytest.fixture
def test_url() -> str:
    return os.environ.get("TEST_URL", "http://localhost:8080")


def test_root(test_url) -> None:
    response = requests.get(test_url)

    assert response.status_code == 200
    assert response.json() == {"message": "Hello!"}


def test_custom(test_url) -> None:
    response = requests.get(f'{test_url}/custom')

    assert response.status_code == 200
    assert response.json() == {"message": "hey"}


def test_version(test_url) -> None:
    response = requests.get(f'{test_url}/version')

    assert response.status_code == 200
    assert "version" in response.json()
    assert re.match(r"[0-9]+\.[0-9]+\.[0-9]+", response.json()["version"]) is not None
