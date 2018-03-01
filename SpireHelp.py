from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def spirehelp():
    return render_template('SpireHelper.html')


if __name__ == '__main__':
    app.run()
