from http import HTTPStatus

from fastapi import FastAPI

from samba_api.schema import Message, User, UserDB, UserPublic

app = FastAPI()

database = []


@app.get("/", status_code=HTTPStatus.OK, response_model=Message)
def hello_world():
    return {"message": "Hello, World!"}


@app.post('/users/', status_code=HTTPStatus.CREATED, response_model=UserPublic)
def create_user(user: User):
    user_with_id = UserDB(**user.model_dump(), id=len(database) + 1)
    database.append(user_with_id)
    return user_with_id
