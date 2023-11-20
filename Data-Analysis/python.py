import mysql.connector

try:
    db_host = "localhost"
    db_username = "root"
    db_password = "14063"

    connection = mysql.connector.connect(
        host = db_host,
        user = db_username,
        password = db_password
    )

    print("Connection successful")
    connection.close
except:
    print("connection Failed")
