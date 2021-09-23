from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return("<p>Hello World 5!</p>")

@app.route("/teste")
def teste():
    return("<p>Online!</p>")

if __name__ == "__main__":
    app.run()
