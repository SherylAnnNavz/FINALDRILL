import pymysql
from app import app
from config import mysql
from flask import jsonify
from flask import flash, request

@app.route('/create', methods=['POST'])
def create_manufacturer():
    try:        
        _json = request.json
        _code = _json['manufacturer_code']
        _name = _json['manufacturer_name']
        _details = _json['manufacturer_details']
        if _code and _name and _details and request.method == 'POST':
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)		
            sqlQuery = "INSERT INTO manufacturer(manufacturer_code, manufacturer_name, manufacturer_details) VALUES(%s, %s, %s)"
            bindData = (_code, _name, _details)            
            cursor.execute(sqlQuery, bindData)
            conn.commit()
            respone = jsonify('Manufacturer added successfully!')
            respone.status_code = 200
            return respone
        else:
            return showMessage()
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()          
     
@app.route('/manufacturer')
def manufacturer():
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT manufacturer_code, manufacturer_name, manufacturer_details FROM manufacturer")
        empRows = cursor.fetchall()
        respone = jsonify(empRows)
        respone.status_code = 200
        return respone
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()  

@app.route('/manufacturer/<int:manufacturer_code>', methods=['GET'])
def man_details(manufacturer_code):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT manufacturer_code, manufacturer_name, manufacturer_details FROM manufacturer WHERE manufacturer_code=%s", manufacturer_code)
        empRow = cursor.fetchone()
        respone = jsonify(empRow)
        respone.status_code = 200
        return respone
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close() 

@app.route('/update', methods=['PUT'])
def update_manufacturer():
    try:
        _json = request.json
        _code = _json['manufacturer_code']
        _name = _json['manufacturer_name']
        _details = _json['manufacturer_details']
        if _code and _name and _details and request.method == 'PUT':			
            sqlQuery = "UPDATE manufacturer SET manufacturer_code=%s, manufacturer_name=%s, manufacturer_details=%s WHERE manufacturer_code=%s"
            bindData = (_code, _name, _details)
            conn = mysql.connect()
            cursor = conn.cursor()
            cursor.execute(sqlQuery, bindData)  
            conn.commit()
            respone = jsonify('Manufacturer updated successfully!')
            respone.status_code = 200
            return respone
        else:
            return showMessage()
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close() 

@app.route('/delete/<int:manufacturer_code>', methods=['DELETE'])
def delete_manufacturer(manufacturer_code):
	try:
		conn = mysql.connect()
		cursor = conn.cursor()
		cursor.execute("DELETE FROM manufacturer WHERE manufacturer_code =%s", (manufacturer_code,))
		conn.commit()
		respone = jsonify('Manufacturer deleted successfully!')
		respone.status_code = 200
		return respone
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()
        
       
@app.errorhandler(404)
def showMessage(error=None):
    message = {
        'status': 404,
        'message': 'Record not found: ' + request.url,
    }
    respone = jsonify(message)
    respone.status_code = 404
    return respone
        
if __name__ == "__main__":
    app.run()