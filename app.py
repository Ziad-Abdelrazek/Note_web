from flask import Flask, request, render_template_string, redirect
import mysql.connector
from datetime import datetime

app = Flask(__name__)

# إعدادات قاعدة البيانات
db_config = {
    'user': 'flaskuser',
    'password': 'flaskpass',
    'host': 'localhost',
    'database': 'notesdb'
}

# واجهة HTML
HTML = '''
<!DOCTYPE html>
<html>
<head>
    <title>Note App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        form {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }
        button:hover {
            background-color: #0056b3;
        }
        .note {
            background: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 15px;
        }
        .note-time {
            color: #666;
            font-size: 12px;
            margin-bottom: 5px;
        }
        .note-content {
            color: #333;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <h1>📝 Write Your Note For Ziad</h1>
    <form method="post" action="/submit">
        <textarea name="note" placeholder="Write your notes here..." required></textarea><br>
        <button type="submit">Save Note</button>
    </form>
</body>
</html>
'''

@app.route('/')
def index():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM notes ORDER BY created_at DESC")
        notes = cursor.fetchall()
        conn.close()
        return render_template_string(HTML, notes=notes)
    except Exception as e:
        return f"Database Error: {str(e)}"

@app.route('/submit', methods=['POST'])
def submit_note():
    try:
        note_content = request.form['note']
        if note_content.strip():  # Check if note is not empty
            conn = mysql.connector.connect(**db_config)
            cursor = conn.cursor()
            cursor.execute("INSERT INTO notes (content, created_at) VALUES (%s, %s)", 
                         (note_content, datetime.now()))
            conn.commit()
            conn.close()
        return redirect('/')
    except Exception as e:
        return f"Error saving note: {str(e)}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
