import os
import platform
from datetime import datetime
from db import get_db_connection

def generate_process_log(filename="system_report.log"):
    with open(filename, "w") as log_file:
        log_file.write(f"System Info Report - {datetime.now()}\n")
        log_file.write("="*50 + "\n")
        log_file.write(f"OS: {platform.system()} {platform.release()}\n")
        log_file.write(f"Machine: {platform.machine()}\n")
        log_file.write(f"Processor: {platform.processor()}\n")
        log_file.write(f"Python Version: {platform.python_version()}\n")
        log_file.write("="*50 + "\n")
        log_file.write("Environment Variables:\n")
        for key, value in os.environ.items():
            log_file.write(f"{key}={value}\n")

def generate_time_report(filename="time_report.txt"):
    with open(filename, "w") as f:
        f.write("Time Report\n")
        f.write("="*30 + "\n")
        f.write(f"Report generated at: {datetime.now()}\n")
        f.write(f"Current Year: {datetime.now().year}\n")
        f.write(f"Current Month: {datetime.now().strftime('%B')}\n")
        f.write(f"Current Day: {datetime.now().day}\n")
        f.write(f"Current Time: {datetime.now().strftime('%H:%M:%S')}\n")
        f.write("="*30 + "\n")

def save_report_record(report_type, filename):
    conn = get_db_connection()
    conn.execute(
        "INSERT INTO reports (report_type, filename) VALUES (?, ?)",
        (report_type, filename)
    )
    conn.commit()
    conn.close()




if __name__ == "__main__":
    generate_process_log()
    generate_time_report()
    print("System info and time report generated.")