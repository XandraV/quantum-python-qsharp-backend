from flask import Flask, request, jsonify
from flask_cors import CORS
from driver import get_result
app = Flask(__name__)

CORS(app)

@app.route('/result', methods=["GET", "POST"])
def get_result_single_qubit():    
    req = request.get_json(force=True)
    res = get_result(req['state'], req['gates'], req['angle'])
    return {'finalResult': str(res)}


if __name__ == "__main__":
    
    #Load this config object for development mode
    app.config.from_object('configurations.DevelopmentConfig')
    app.run()