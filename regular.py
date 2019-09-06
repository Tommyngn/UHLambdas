import csv
import psycopg2 as p
import os
import csv
from check_info_functions import check_uji,check_id,check_classname,check_fullname

conn=p.connect(host='localhost',dbname='uhlambdas')
curr=conn.cursor()

curr.execute('SELECT ujiname FROM roster.uji')

list_=curr.fetchall()
uji_list=[]

for i in list_:
    for j in i:
        uji_list.append(str(j))
        uji_list.append(str(j).lower())





