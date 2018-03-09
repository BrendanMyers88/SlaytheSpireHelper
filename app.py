from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('Index.html')


@app.route('/ironclad')
def ironclad():
    return render_template('Ironclad.html')


@app.route('/silent')
def silent():
    return render_template('Silent.html')


@app.route('/relics')
def relics():
    return render_template('Relics.html')
if __name__ == '__main__':
    app.run()
