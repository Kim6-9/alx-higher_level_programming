#!/usr/bin/python3
Your Comments Here
import MySQLdb
import sys
if_name="main":
db MySQLdb.connect(host="localhost", user-sys.argv[1].
passwd-sys.argv[2], db-sys.argv[3], port=3306)
cdb.cursor()
c.execute("SELECT cities.name FROM
cities INNER JOIN states ON states. id=cities.state_id
WHERE states.names, (sys.argv[4],))
rows c.fetchall()
tap list(row[0] for row in rows)
print("tmp, sep", ")
c.close()
db.close()
