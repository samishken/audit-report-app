from flask import Flask, send_file, render_template, render_template_string
from generate_logs import generate_process_log
from db import get_db_connection

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/generate-log", methods=["GET"])
def generate_log():
    return render_template("report.html")

@app.route("/download-log", methods=["POST"])
def download_log():
    log_filename = "Reports/system_report.log"
    generate_process_log(log_filename)
    return send_file(log_filename, as_attachment=True)

@app.route("/download-time-report", methods=["POST"])
def download_time_report():
    log_filename = "Reports/time_report.txt"
    from generate_logs import generate_time_report
    generate_time_report(log_filename)
    return send_file(log_filename, as_attachment=True)

@app.route("/reports")
def list_reports():
    conn = get_db_connection()
    reports = conn.execute("SELECT * FROM reports ORDER BY created_at DESC").fetchall()
    conn.close()
    return render_template("reports_view.html", reports=reports)

if __name__ == "__main__":
    app.run(debug=True)
