from fastapi.testclient import TestClient

from sandbox.main import app

client = TestClient(app)


def test_read_main():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello World"}


def test_read_version():
    response = client.get("/version")
    assert response.status_code == 200
    assert response.json() == {"version": "0.1.4"}
