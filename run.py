from flask import Flask, request, jsonify
from flask_cors import CORS
from driver import get_circuit_result
app = Flask(__name__)

CORS(app)

@app.route('/circuit-result', methods=["GET", "POST"])
def get_result_multi_qubit():
    req = request.get_json(force=True)
    print(req)
    res = get_circuit_result(int(req['qubitNum']), req['gates'])
    return {'finalResult': res}

if __name__ == "__main__":
    
    #Load this config object for development mode
    app.config.from_object('configurations.DevelopmentConfig')
    app.run()