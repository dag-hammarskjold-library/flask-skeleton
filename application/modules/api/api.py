from flask import Blueprint, request, jsonify

api = Blueprint('api', 'api', url_prefix='/api')

@api.route('/')
def index():
    return jsonify('This is the API index.')