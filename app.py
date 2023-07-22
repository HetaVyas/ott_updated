from fastapi import FastAPI, HTTPException,Request
from fastapi.responses import HTMLResponse,JSONResponse
from fastapi.templating import Jinja2Templates
import uvicorn
import redis
import datetime

app = FastAPI()
templates = Jinja2Templates("templates")

@app.get("/",response_class=HTMLResponse)
async def index(request:Request):
    return templates.TemplateResponse("index.html",context={"request":request})

redis_client = redis.StrictRedis(host='localhost', port=6379, db=0)

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
        timestamp = datetime.datetime.now()
        timestamp = timestamp.strftime("%d/%m/%Y, %H:%M:%S")

        print (session_key,timestamp)
        
        redis_client.hset (session_key, mapping={
            'username':username,
            'password':password,
            'message':message,
            'time':timestamp
        })
    
    except Exception as e:
        print(e)
        return JSONResponse(
            content={"error":e},
            status_code=400
        )
    
@app.get("/botmsg/{username}")
async def get_data(username: str):
    session_key = f"session:{username}"
    session_data = redis_client.hgetall(session_key)
    session_data_str = {k.decode():v.decode() for k,v in session_data.items()}

    if not session_data_str:
        raise HTTPException(status_code=404, detail="Session not found")
    
    return JSONResponse(
        content = {"message":session_data_str},
        status_code = 200
    )
    
if __name__ == "__main__":
    uvicorn.run("app:app",port=8000,reload=True)