from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine
from data_access.models import User

session_maker = sessionmaker(bind=create_engine("sqlite:///models.db"))

with session_maker() as session:
    users = session.query(User).all()
    for user in users:
        print(user.dict())