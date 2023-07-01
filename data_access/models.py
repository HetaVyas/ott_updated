from sqlalchemy import Column,String
from sqlalchemy.orm import declarative_base
import uuid


Base = declarative_base()

def generate_uuid():
    return str(uuid.uuid4())

class User(Base):
    __tablename__ = "user"

    id = Column(String,primary_key=True,default=generate_uuid)
    username = Column(String,nullable=False)
    password = Column(String,nullable=False)
    message = Column(String,nullable=False)

    def dict(self):
        return {
            "id":self.id,
            "username":self.username,
            "password":self.password,
            "message":self.message
        }