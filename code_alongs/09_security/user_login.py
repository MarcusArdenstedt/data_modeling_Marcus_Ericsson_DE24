from connect_postgres import connect_postgres
from sqlalchemy import text

username = input("Enter you name: ")
password = input("Enter you password: ")


with connect_postgres().connect() as conn:
    result = conn.execute(text(f"SELECT * FROM users WHERE username = '{username}' AND password = '{password}'")).fetchall()
    
    
    # print(result)
    
    
    if result:
        print("Login successful")
        print("Eat all ice cream")
        
    else:
        print("Another failure")
