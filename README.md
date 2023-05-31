# FINALDRILL
Final Hands-on Drill

This is my Final Hands-on drill on Integrative Programming. 

# CRUD REST API with XML/JSON Output

This project is a CRUD (Create, Read, Update, Delete) REST API for an in-memory object consisting of records of your choice. The API will allow users to interact with those records, perform CRUD operations, and provide the option to format the API output as XML or JSON based on a URI parameter.

## Installation

To run this API, make sure you have python and mysql installed. 

1. Clone the repository:
-git clone https://github.com/your-username/repository-name.git
Replace `your-username` with your GitHub username and `repository-name` with the name of the repository.

2. Create your virtual environment
-python -m venv your_venv_name

3. Install all needed libraries like flask, flask-cors, mysql, pymysql:

4. Set up the database:
- Create a new database in mysql workbench or if you have already a database you can use it.
- Update the database configuration in `config/database.js` with your database credentials.

5. Run the API:
-python nameofyourfile.extension

6. Go to postman to execute the CRUD
-http://localhost:5000/nameofthetableinyourdatabase (GET)#this will show all of the data in that table in your database
-http://localhost:5000/nameofthetableinyourdatabase/1 (GET)#if you want to show just the data that has a number 1 for example id number
-http://localhost:5000/create (POST)#if you want to add another data this is what will you do
-http://localhost:5000/update (PUT)#this will update your table in the database. it will add the data that you created if you create one
-http://localhost:5000/delete/25 (DELETE)#if you want to delete specific data in your table this is what you will do. you sould put also if what number/code/id of he data that you want to delete

By doing those steps, you successfully Build a CRUD REST API