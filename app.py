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

@app.get("/seldom/<string:id>")
def get_id(id):
    return {
        "id": id
    }


if __name__ == "__main__":
    app.run('127.0.0.1', port=61000 debug=True)
