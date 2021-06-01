from flask import Flask, jsonify, request
from .parse import Parse
import json


app = Flask(__name__)
app.config['JSON_AS_ASCII']=False

@app.route('/', methods=['GET', 'POST'])
def app_main():
    request_data = request.data
    request_data = json.loads(request_data)
    id = request_data['id']
    pw = request_data['pw']
    
    ps  = Parse()
    return jsonify({'code':ps.login(id,pw)})


@app.route('/classroom', methods=['GET', 'POST'])
def classroom():
    request_data = request.data
    request_data = json.loads(request_data)
    id = request_data['id']
    pw = request_data['pw']
        
    ps  = Parse()
    ps.login(id, pw)
    return jsonify(ps.classroom())

