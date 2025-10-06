from fastapi import FastAPI

app = FastAPI()


@app.get("/", status_code=200)
def hello_world():
    return {"message": "Hello, World!"}
