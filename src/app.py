from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return("<p>Hello World 3!</p>")

@app.route("/teste")
def index():
    return("<p>Online!</p>")

if __name__ == "__main__":
    app.run()
