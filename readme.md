# Casting Agency

## Getting Started

### Installing Dependencies

#### Python 3.7

Follow instructions to install the latest version of python for your platform in the [python docs](https://docs.python.org/3/using/unix.html#getting-and-installing-the-latest-version-of-python)

#### Virtual Environment

We recommend working within a virtual environment whenever using Python for projects. This keeps your dependencies for each project separate and organized. Instructions for setting up a virtual environment for your platform can be found in the [python docs](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/)

#### PIP Dependencies

Once you have your virtual environment setup and running, install dependencies by naviging to the `/backend` directory and running:

```bash
pip install -r requirements.txt
```

This will install all of the required packages we selected within the `requirements.txt` file.

##### Key Dependencies

- [Flask](http://flask.pocoo.org/) is a lightweight backend microservices framework. Flask is required to handle requests and responses.

- [SQLAlchemy](https://www.sqlalchemy.org/) and [Flask-SQLAlchemy](https://flask-sqlalchemy.palletsprojects.com/en/2.x/) are libraries to handle the lightweight sqlite database. Since we want you to focus on auth, we handle the heavy lift for you in `./src/database/models.py`. We recommend skimming this code first so you know how to interface with the Drink model.

- [jose](https://python-jose.readthedocs.io/en/latest/) JavaScript Object Signing and Encryption for JWTs. Useful for encoding, decoding, and verifying JWTS.

## Running the app in heroku

Follow this tutorial to deploy and run application in heroku:
https://devcenter.heroku.com/articles/getting-started-with-python


## User Type:

1. Casting Assistant: Can only read actors and movies DB.
2. Casting Director: Can read/update/insert actors and movies DB.
3. Executive Producer: Can read/update/insert/delete actors and movies DB.

## End Points:

1. get /movies - Gets all the movies in the DB
```
Request: Empty
```
```
Response:
{
 "success": True,
 "movies": Array with all the movies in the DB
}
```
2. get /actors - Gets all the actors in the DB
```
Request: Empty
```
```
Response:
{
 "success": True,
 "actors": Array with all the actors in the DB
}
```
3. post /movies - Insert a new movie in to the DB
```
Request: 
{
    "title": "Hello New",
    "release_date": "2022-12-24"
}
```
```
Response:
{
 "success": True,
 "movies": The movie which was inserted
}
```
```
Validates:
- The id must be present.
- Format for release date must be in YYYY-MM-DD
```
4. post /actors - Insert a new actor in to the DB
```
Request: 
{
    "name": "Ankur Agarwal",
    "age": 31,
    "gender": "male"
}
```
```
Response:
{
 "success": True,
 "actors": The actor which was inserted
}
```
```
Validates:
- The id must be present.
- Age must be numeric.
- Gender should be male or female.
```
5. patch /movies/<int:id> - Update a movie already present in the DB
```
Request: 
{
    "title": "Hello New New"
}
```
```
Response:
{
 "success": True,
 "actors": The actor which was inserted
}
```
```
Validates:
- The id must be present.
- Format for release date must be in YYYY-MM-DD
```
6. patch /actors/<int:id> - Update a actor already present in the DB
```
Request: 
{
    "age": 31,
    "gender": "male"
}
```
```
Response:
{
 "success": True,
 "actors": The actor which was updated
}
```
```
Validates:
- The id must be present.
- Age must be numeric.
- Gender should be male or female.
```
7. delete /movies/<int:id> - Deletes a movie from the DB
```
Request: Empty
```
```
Response:
{
 "success": True,
 "delete": id
}
```
```
Validates:
- The id must be present.
```
8. delete /actors/<int:id> - Delets a actor from the DB
```
Request: Empty
```
```
Response:
{
 "success": True,
 "delete": id
}
```
```
Validates:
- The id must be present.
```

```
Note: All the endpoint are authenticated and you need valid permissions to access each endpoint. See below Auth0 section for more details.
```

## Setup Auth0

1. Create a new Auth0 Account
2. Select a unique tenant domain
3. Create a new, single page web application
4. Create a new API
   - in API Settings:
     - Enable RBAC
     - Enable Add Permissions in the Access Token
5. Create new API permissions:
   - `get:movies`
   - `get:actors`
   - `post:movies`
   - `post:actors`
   - `patch:movies`
   - `patch:actors`
   - `delete:movies`
   - `delete:actors`
   
6. Create new roles for:
   - Casting Assistant
     - can `get:movies` and `get:actors`
   - Casting Director
     - can do what Casting Assistant can do and also can `post:movies` `post:actors` `patch:movies` and `patch:actors`
   - Executive Producer
     - can perform all actions

## How to test the application

1. Get the token for each role by logging in through following Auth0 endpoint:
```
https://ankur617.us.auth0.com/authorize?audience=castingagency&response_type=token&client_id=VnRPNoiR5Ul6NGTMjEt4xOnVEMvp7Uwo&redirect_uri=http://localhost:8100/tabs/user-page
```

2. Test Credentials for each role:
   - Casting Assistant:
      - Username: ankur124@gmail.com
      - Password: Ankur@123
   - Casting Director:
      - Username: ankur617@gmail.com
      - Password: Ankur@123
   - Executive Producer:
      - Username: ankur124@gmail.com
      - Password: Ankur@123
 3. Once logged in you would get your JWT, which you could use to test the endpoint https://myapp-170418.herokuapp.com
