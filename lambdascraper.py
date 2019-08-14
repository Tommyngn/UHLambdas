from bs4 import BeautifulSoup as BS
import requests
import csv
import xml
import psycopg2 as p

conn=p.connect(host='localhost',dbname='uhlambdas')

curr=conn.cursor()

checklist=[]

def check(filename, classnumber):
    reader=open('older_bro_info.csv','r')
    list_=list(csv.reader(reader))
    for pos1, i in enumerate(list_):
        if classnumber in i:
            return True

    return False




def add_info(name,home,major,uji,classname,classnumber,csvwriter):

    csvwriter.writerow([name,home,major,uji,classname,classnumber])



csv_file=open('older_bro_info.csv','a')
csv_writer=csv.writer(csv_file)

url='http://uhlambdas.stevendao.com/roster'

response=requests.get(url)

soup=BS(response.content,features='html.parser')

info=soup.find_all('a',{'data-container': 'body'})

for pos1, i in enumerate(info):
        detail=str(i).split('\n')
        for pos2, j in enumerate(detail):
            if 'fa fa-' not in detail[0]:
                # print('POSITION'+'::'+str(pos2)+'::',j)

                if pos2==1 and '&lt' in str(j):
                    class_numberlist=str(detail[1]).split(';')
                    class_number=class_numberlist[5]
                    class_number=class_number.strip('&lt;').strip('No. ')
                    # print(class_number)
                elif pos2==2 and '&lt' in str(j):
                    classname_list=str(detail[2]).split(';')
                    classname=classname_list[0].strip('&lt').strip('               ').replace(' ','-')
                    # print(classname)
                elif pos2==3 and '&lt' in str(j):
                    uji_list=str(detail[3]).split(';')
                    uji=uji_list[0].strip('&lt').strip('               ')
                    # print(uji)

                elif pos2==4 and '&lt' in str(j):
                    major_list=str(detail[4]).split(';')
                    major=major_list[3].strip('&lt').strip('         ')
                    # print(major)
                elif pos2==5 and '&lt' in str(j):
                    home_list=str(detail[5]).split(';')
                    home=home_list[3].strip('&lt').strip('           ')
                    # print(home)
                elif 'popover' in str(j):
                    fullname_list=str(detail[pos2]).split('title="')
                    fullname=fullname_list[1].strip(' \xa0">')
                    # print(fullname)

                    k=[]
                    query='SELECT linenumber FROM roster.line_number WHERE linenumber=%s;'
                    curr.execute(query,[fullname])
                    # try:
                    h=[r[0] for r in curr.fetchall()]

                    k.append(h)
                    print('hi')
                    print(len(k))
                    if len(k)==1:
                    # if 'data-placement' not in fullname and check('older_bro_info.csv',class_number)==False:
                        add_info(fullname, home, major, uji, classname, class_number, csv_writer)
                        # query='INSERT INTO roster.line_number VALUES(%s);'
                        # curr.execute(query,[int(class_number)])
                        # conn.commit()
                        #
                        # query='INSERT INTO roster.active_member VALUES(%s, %s, %s, %s, %s, %s, %s);'
                        # data=[fullname, major, home, uji, classname, int(class_number), int(class_number)]
                        # curr.execute(query,data)
                        # conn.commit()
                        k.clear()
                        # else:
                        #     print('here')
                    # except IndexError:
                    #     continue


            else:
                # print('POSITION'+'::'+str(pos2)+'::',j)

                if pos2==0 and '&lt' in str(j):
                    classname_list=str(detail[0]).split("class='fa fa-")
                    classname=classname_list[1].strip("i&gt;&lt;/div&gt;").strip("'").replace(' ','-').title()
                    # print(classname)

                elif pos2==1 and '&lt' in str(j):
                    class_numberlist=str(detail[1]).split(';')
                    class_number=class_numberlist[2].strip('&lt').strip('No. ')
                    # print(class_number)

                elif pos2==2 and '&lt' in str(j):
                    uji_list=detail[2].split(';')
                    uji=uji_list[0].strip('&lt').strip('             ')

                elif pos2==3 and '&lt' in str(j):
                    major_list=detail[3].split(';')
                    major=major_list[3].strip('&lt')

                elif pos2==4 and '&lt' in str(j):
                    home_list=detail[4].split(';')
                    home=home_list[3].strip('&lt')

                elif 'popover' in str(j):
                    fullname_list=detail[pos2].split('"><font color="#A94545">')
                    fullname=fullname_list[1].strip('</a>').strip('/font').strip('<')
                    # print(fullname)

                    # k = []
                    # query = 'SELECT linenumber FROM roster.line_number WHERE linenumber=%s;'
                    # curr.execute(query, [int(class_number)])
                    # try:
                    #     h = [r[0] for r in curr.fetchall()]
                    #
                    #     k.append(h[0])
                    #     print(k[0])
                    #     print(len(k))
                    #     if len(k) == 0:
                    #         # if 'data-placement' not in fullname and check('older_bro_info.csv',class_number)==False:
                    #         add_info(fullname, home, major, uji, classname, class_number, csv_writer)
                    #         query='INSERT INTO roster.line_number VALUES(%s);'
                    #         curr.execute(query,[int(class_number)])
                    #         conn.commit()
                    #
                    #         query='INSERT INTO roster.active_member VALUES(%s, %s, %s, %s, %s, %s, %s);'
                    #         data=[fullname, major, home, uji, classname, int(class_number), int(class_number)]
                    #         curr.execute(query,data)
                    #         conn.commit()
                    #         k.clear()
                    #     # else:
                    #     #     print('here')
                    # except IndexError:
                    #     continue

                    # if 'data-placement' not in fullname and check('older_bro_info.csv',class_number)==False:
                    #     add_info(fullname, home, major, uji, classname, class_number, csv_writer)
                    # else:
                    #     print('here')





