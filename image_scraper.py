import requests
from bs4 import BeautifulSoup as BS
import urllib.request
import os


response=requests.get('http://uhlambdas.stevendao.com/activehouse')

soup=BS(response.content, features='html.parser')

pics=soup.find_all('img',{'class': 'img-responsive'})

for i in pics:
    list_=str(i).split(' ')
    src=list_[2]
    src=str(src).strip('src=').strip('"/>')
    print(src)
    src_list=str(src).split('/')

    number=src_list[6]

    os.mkdir('static/images/actives/'+str(number))
    urllib.request.urlretrieve('http://uhlambdas.stevendao.com/'+str(src),'static/images/actives/'+str(number)+'/profilepic.jpg')
    print(number)