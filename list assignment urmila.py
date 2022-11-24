#!/usr/bin/env python
# coding: utf-8

# In[ ]:


l=[]
type(l)


# In[ ]:


l=[10,20,30,40,60,71,20,49,'data',True,10.51]
l


# In[ ]:


l[5]


# In[ ]:


l[0:9]


# In[ ]:


l[0:9]


# In[ ]:


l[0:9:-1]


# In[ ]:


l[::-1]


# In[ ]:


l[-1:-10:-1]


# In[ ]:


l+12


# In[ ]:


l+'urmila'


# In[ ]:


l*2


# In[ ]:


l


# In[ ]:


40 in l


# In[ ]:


44 in l


# In[ ]:


44 not in l


# In[ ]:


min(),max()


# In[ ]:


l=[10,20,30,40,60,71,10,30,40,20,49]
min(1)


# In[ ]:


min(l)


# In[ ]:


max(l)


# In[ ]:


l=['python','data','c','java']
min(l)


# In[ ]:


max(l)


# In[ ]:


l[3]=555
l


# In[ ]:


l.insert(4,123)
l


# In[ ]:


l=['python','data','c','java']


# In[ ]:


l.index(60)


# In[ ]:


l.append(111)
l


# In[ ]:


l.append("ss")
l


# In[ ]:


l1=[11,22,33,66,44]


# In[ ]:


l.append(l1)
l


# In[ ]:


l=[10,20,30,555,123,60,71,]
l.append('urmila')
l


# In[ ]:


l.extend(l1)
l


# In[ ]:


l.extend('python')
l


# In[ ]:


list('python')
l


# In[ ]:


l=[10,20,30,555,123,60,71]
l.pop()


# In[ ]:


l


# In[ ]:


l.pop()


# In[ ]:


l.remove(30)
l


# In[ ]:


print('python')


# In[ ]:


a=10
b=20
a/b


# In[ ]:


a=10
b=0
a/b


# In[ ]:


a=10
b=11
a/b


# In[ ]:


f = open('abc.txt','w')


# In[ ]:


a=10
b=20    

try:
    print(a/b)
except:
    print("this is my except block")


# In[ ]:


a=10
b=15
try:
    f=open("abc.txt",'x')
    except:
        print("if file exist then you cant create it again")


# In[ ]:


except Exception as e:
    print(e)


# In[ ]:


l=[10,20,30]


# In[ ]:


try:
    num=int
    except vaslue error:
        raise valueError:


# In[ ]:


try:
    def append_value(a):
        "this is used to add append value at end of list"
        try:
            l.append(a)
            print(l)
        except Exception as e:
            print (e)
    append_value(l)
except Exception as e:
        print (e)


# In[ ]:


try:
    def extend_value(a):
        "this is used to add extend value at end of list"
        try:
            l.extend(l1)
            print(l)
    except Exception as e:
                print(e) 
        extend_value(l)
    except Exception as e:
                    print (e)


# In[ ]:


try:
    def  insert_value(a):
        "this is used to add insert value at end of list"
        try:
            l.extend(a)
            print(l)
    except Exception as e:
                print (e)
    extend_value(l)
      except Exception as e:
                    print (e)


# In[ ]:


try:
    def remove_value(a):
        "this is used to remove value at end of list"
        try:
            l.remove(a)
            print(l)
    except Exception as e:
                print (e)
    remove_value(l)
      except Exception as e:
                    print (e)


# In[ ]:




