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
DATABASE_URL = 'postgres://niehnerzzlyhai:bec06179c4b6a8cf8da65fa000bc2ce7224f36ed46e9c9b82cbde73b3b8a42e8@ec2-54-227-245-146.compute-1.amazonaws.com:5432/dp5t95bsg9ngf'

# print(DATABASE_URL)
conn=p.connect(DATABASE_URL)

cur=conn.cursor()





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
if __name__=='__main__':
    app.run(debug=True)