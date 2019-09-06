

def check_fullname(name):

    name=name.title()

    return name

def check_uji(uji,list_):

    uji+=' uji'

    for i in list_:
        if str(uji) not in list_ or str(uji).title() not in list_:
            return 'error'

    return str(uji).title()

def check_classname(name):
    name=name.replace(' ','-').title()

    return name

def check_id(id):

    result=''

    try:
        int(id)
        result='good'
    except ValueError:
        result='bad'

    if result=='good':
        return int(id)
    else:
        return 'error'


