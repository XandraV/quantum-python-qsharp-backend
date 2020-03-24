from flask import Flask
from flask_cors import CORS
from driver import get_result
app = Flask(__name__)

CORS(app)
@app.route('/')
@app.route('/result/<state>/<gate>')
def probability_of_one(state, gate):
    res = get_result(state, gate)
    return {'probability':str(res)}

if __name__ == "__main__":
    
    #Load this config object for development mode
    app.config.from_object('configurations.DevelopmentConfig')
    app.run()