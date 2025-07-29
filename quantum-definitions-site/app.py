from flask import Flask, render_template, request, redirect
import sqlite3

app = Flask(__name__)

def get_db_connection():
    conn = sqlite3.connect('quantum.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    terms = conn.execute('SELECT * FROM definitions').fetchall()
    conn.close()
    return render_template('index.html', terms=terms)

@app.route('/add', methods=['POST'])
def add_term():
    term = request.form['term']
    category = request.form['category']
    definition = request.form['definition']
    source = request.form['source']
    
    conn = get_db_connection()
    conn.execute('INSERT INTO definitions (term, category, definition, source) VALUES (?, ?, ?, ?)',
                 (term, category, definition, source))
    conn.commit()
    conn.close()
    return redirect('/')

if __name__ == '__main__':
    app.run(debug=True)
