from flask import render_template, Blueprint
from flask_cors import CORS
hello_blueprint = Blueprint('hello',__name__)
CORS(hello_blueprint)
@hello_blueprint.route('/')
@hello_blueprint.route('/movies')
def index():
 #return render_template("index.html")
    return {'movie':'Hello'}