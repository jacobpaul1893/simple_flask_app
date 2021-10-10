from flask import Flask

app = Flask(__name__)

@app.route("/")
def base():
    return "<p>Simple App</p>"

@app.route("/another_one")
def another():
    return {
        "another": "anotherOne"
    }

if __name__ == "__main__":
    app.run()
