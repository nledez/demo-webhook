from fastapi import FastAPI
from .version import version

app = FastAPI()


@app.get("/")
async def read_main():
    return {"message": "Hello World"}


@app.get("/version")
async def read_version():
    return {"version": version}
