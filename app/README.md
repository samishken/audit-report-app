# Audit Report Flask App

A simple Flask web application to generate, download, and view system and time reports. Reports are logged to files and tracked in an SQLite database.

## Features

- Generate and download system info and time reports
- View a list of all generated reports (stored in SQLite)
- Dockerized for easy deployment

## Requirements

- Python 3.10+
- Flask
- SQLite (Python built-in)
- Docker (optional, for containerization)

## Setup

### 1. Clone the repository

```sh
git clone https://github.com/samishken/audit-report-app.git
cd audit_report_flask_app
```

### 2. Create and activate a virtual environment

```sh
python3 -m venv venv
source venv/bin/activate
```

### 3. Install dependencies

```sh
pip install -r requirements.txt
```

### 4. Initialize the SQLite database

```sh
python -c "import db; db.init_db()"
```

### 5. Run the app

```sh
python app.py
```

Visit [http://localhost:5000](http://localhost:5000) in your browser.

---

## Docker Usage

### 1. Build the Docker image

```sh
docker build -t audit-report-app .
```

### 2. Run the Docker container

```sh
docker run -p 9001:9001 audit-report-app
```

Visit [http://localhost:9001](http://localhost:9001) in your browser.

---

## Project Structure

```
audit_report_flask_app/
├── app.py
├── db.py
├── generate_logs.py
├── requirements.txt
├── Dockerfile
├── .gitignore
├── templates/
│   ├── index.html
│   ├── report.html
│   └── reports_view.html
└── static/
    └── styles/
        └── css/
            └── style.css
```

---

## License

MIT License