from flask import Flask, jsonify, request
from Parse import Parse

app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False

@app.route('/', methods=['GET, POST'])
def app_main():
    id = request.id
    pw = request.pw
    ps = Parse()
    ps.login(id, pw)
    ps.classroom()
    return jsonify({'data':ps.classroom()})