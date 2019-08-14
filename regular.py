import csv
import psycopg2 as p
import os

conn=p.connect(host='localhost',dbname='uhlambdas')
curr=conn.cursor()


l=os.listdir('static/images/actives')

for i in l:
    query='UPDATE roster.active_member SET picture=%s WHERE id= %s; '
    curr.execute(query,['yes',int(i)])
    conn.commit()



