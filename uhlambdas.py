# from flask import Flask, render_template, request
import psycopg2 as p
# from urllib.parse import urlparse
from flask import Flask, render_template, url_for
from flask_sqlalchemy import SQLAlchemy
import sys
import json
from flask_heroku import Heroku


app=Flask(__name__,template_folder='templatess')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
heroku = Heroku(app)
db = SQLAlchemy(app)

# app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://localhost/uhlambdas'

#
DATABASE_URL = 'postgres://nsbpiscncggxco:b91fc1391fda3c0ea341a8fba974f23db4b25f09e0a70a277f895fd0ce900315@ec2-54-83-13-145.compute-1.amazonaws.com:5432/dqkci05uaqirq'

# print(DATABASE_URL)
conn=p.connect(DATABASE_URL)

cur=conn.cursor()


# cur.execute('SELECT classname FROM roster.active_member ORDER BY id;')
#
# names = cur.fetchall()

# classlist = []
# listing = []
# string_ = ''
# for pos1, i in enumerate(names):
#     for pos2, j in enumerate(i):
#         # print(listing)
#         if str(j) not in listing and str(j) != string_:
#             listing.append(j)
#             if len(listing) == 4:
#                 classlist.append(listing)
#                 listing = []
#                 string_ = str(j)
#     if pos1 == len(names) - 1:
#         classlist.append(listing)
#         listing = []
# for i in classlist:
#     print(i)
#
# cur.execute('SELECT * FROM roster.active_member;')
#
# listing = cur.fetchall()
# listofdict = []
#
# for pos1, i in enumerate(listing):
#     dict = {'fullname': i[0], 'major': i[1], 'home': i[2], 'uji': i[3], 'classname': i[4], 'classnumber': i[5]}
#     listofdict.append(dict)





@app.route('/rush')
def rush():

    return render_template('test.html')

@app.route('/')
def home():

    return render_template('index-text.html')

@app.route('/', methods=['POST'])
def email_():
    name=request.form['name']

    print(name)

    return render_template('index-text.html')


@app.route('/brothers')
def protfolio():
    classnames = []
    classnumbers = []
    roster = []

    cur.execute('SELECT classname,id FROM roster.active_member;')

    l = cur.fetchall()

    for i in l:
        if i[1] >= 241:
            classnumbers.append(i[1])
            if i[0] not in classnames:
                classnames.append(i[0])

    cur.execute('SELECT * FROM roster.active_member WHERE id >= 241;')

    k = cur.fetchall()

    for i in k:
        dict = {'fullname': i[0], 'major': i[1], 'home': i[2], 'uji': i[3], 'classname': i[4], 'classnumber': i[5], 'picture' : i[7]}
        roster.append(dict)

    return render_template('portfolio.html',classnames=classnames,roster=roster,numbers=classnumbers)


@app.route('/roster')
def roster():

    cur.execute('SELECT classname FROM roster.active_member;')

    names = cur.fetchall()

    classlist = []
    listing = []
    string_ = ''
    for pos1, i in enumerate(names):
        for pos2, j in enumerate(i):
            # print(listing)
            if str(j) not in listing and str(j) != string_:
                listing.append(j)
                if len(listing) == 4:
                    classlist.append(listing)
                    listing = []
                    string_ = str(j)
        if pos1 == len(names) - 1:
            classlist.append(listing)
            listing = []

    cur.execute('SELECT * FROM roster.active_member;')

    listing = cur.fetchall()
    listofdict = []

    for pos1, i in enumerate(listing):
        dict = {'fullname': i[0], 'major': i[1], 'home': i[2], 'uji': i[3], 'classname': i[4], 'classnumber': i[5]}
        listofdict.append(dict)
#
    return render_template('portfolio2.html',roster=listofdict,listlistofclasses=classlist)


#
#
#
# if __name__=='__main__':
#     app.run(debug=True)