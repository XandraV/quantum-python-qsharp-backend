from flask import Flask
from flask_cors import CORS
from driver import get_probability_of_one
app = Flask(__name__)

CORS(app)
@app.route('/')
@app.route('/probability')
def probability_of_one():
    prob = get_probability_of_one()
    return {'probability':str(prob)}

if __name__ == "__main__":
    
    #Load this config object for development mode
    app.config.from_object('configurations.DevelopmentConfig')
    app.run()