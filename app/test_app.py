import pytest
from app import app

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_home_page(client):
    response = client.get("/")
    assert response.status_code == 200
    assert b"Welcome" in response.data

def test_generate_log_page(client):
    response = client.get("/generate-log")
    assert response.status_code == 200
    assert b"Report" in response.data

# def test_reports_page(client):
#     response = client.get("/reports")
#     assert response.status_code == 200
#     assert b"Report" in response.data or b"report" in response.data