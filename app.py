from fastapi import FastAPI,Request
from fastapi.responses import HTMLResponse,JSONResponse
from fastapi.templating import Jinja2Templates
import uvicorn
from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine
from data_access.models import User

app = FastAPI()
templates = Jinja2Templates("templates")

@app.get("/",response_class=HTMLResponse)
async def index(request:Request):
    return templates.TemplateResponse("index.html",context={"request":request})


@app.post("/insert")
async def insert(request:Request):
    try:
        session_maker = sessionmaker(bind=create_engine("sqlite:///models.db"))
    
        form_data = await request.form()
        username = form_data["username"]
        password = form_data["password"]
        message = form_data["message"]

        with session_maker() as session:
            users = [
                User(
                username=username,
                password=password,
                message = message
                )
            ]

            for user in users:
                session.add(user)
                session.commit()

        with session_maker() as session:
            users = session.query(User).all()
            for user in users:
                print(user.dict())

        return JSONResponse(
            content={"message":"data created"},
            status_code=200
        )
    except Exception as e:
        print(e)
        return JSONResponse(
            content={"error":e},
            status_code=400 # bad request
        )
    

# render the template index.html --> Jinja2Templates # feature ==> ASGI []


@app.post("/update")
async def update(request:Request):
    try :
        
        session_maker = sessionmaker(bind=create_engine("sqlite:///models.db"))
        
        form_data = await request.form()
        username = form_data["username"]
        password = form_data["password"]
        message = form_data["message"]

        with session_maker() as session:
            users = session.query(
                User
            ).filter(User.username == username,User.password == password)

            



    except Exception as e:
        print(e)
        return JSONResponse(
            content={"error":e},
            status_code=400
        )

if __name__ == "__main__":
    uvicorn.run("app:app",port=8000,reload=True)