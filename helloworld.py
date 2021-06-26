from flask import Flask

app = Flask(__name__)

@app.route("/")
@app.route("/home")
@app.route("/index")
def home():
    return "Hello World!"

if __name__ == '__main__':
    app.run('0.0.0.0','3333')
