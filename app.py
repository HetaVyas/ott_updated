from fastapi import FastAPI, HTTPException,Request
from fastapi.responses import HTMLResponse,JSONResponse
from fastapi.templating import Jinja2Templates
import uvicorn
from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine
from data_access.models import User
import redis
import time

app = FastAPI()
templates = Jinja2Templates("templates")

@app.get("/",response_class=HTMLResponse)
async def index(request:Request):
    return templates.TemplateResponse("index.html",context={"request":request})

@app.post("/message")
async def msg(request:Request):
    try:
        form_data = await request.form()
        username = form_data["username"]
        password = form_data["password"]
        message = form_data["message"]

        #print(username)

        #Save
        session_key = f"session:{username}"
        timestamp = int(time.time())   
        print (session_key,timestamp)
        
        redis.set (session_key, "username: ", username)
        redis.set (session_key, "password: ", password)
        redis.set (session_key, "message: ", message)
        redis.set (session_key, "time: ", timestamp)
    
    except Exception as e:
        print(e)
        return JSONResponse(
            content={"error":e},
            status_code=400
        )
    
@app.get("/botmsg")
async def get_data(username: str):
    session_key = f"session:{username}"
    session_data = redis.client.hgetall(session_key)

    if not session_data:
        raise HTTPException(status_code=404, detail="Session not found")
    
    return session_data

if __name__ == "__main__":
    uvicorn.run("app:app",port=8000,reload=True)