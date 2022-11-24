#!/usr/bin/env python
# coding: utf-8

# In[8]:


r = int(input("area of circle"))
a = 3.14*r*r
print(a)


# In[20]:


a = 10

if a <= 0:
    if a == 0:
        print("Number is 0")
    else:
        print("negative")

else:
    print("Number is positive")


# In[10]:


l = int(input("enter a length"))
b = int(input("enter a breadth"))
h = int(input("enter a height"))

a=l*b*h

print(a)


# In[21]:


a=10
b=0

try:
    print(a/b)
except:
    print("cant divided by zero")


# In[7]:


def a(r):   
    a = 3.14*r*r 
    return a 
  
Radius = int(input ("enter the circle : "))  
print (" The area of the circle is: ", a(r))  


# In[12]:


class circle:
    def radius(self,n):
        self.r=n
    def area(self):
        a=3.14*r*r
        print("area  is ",a)
    def circumferance(self):
        c=2*3.14*self.r
        print("circumferance is ",c)
    
a=circle()
a.radius(5)
a.area()
a.circumferance()


# In[ ]:





# In[14]:


class circle:
    def __init__(self,n):
        self.r=n
    def area(self):
        a=3.14*r*r
        print("area  is ",a)
    def circumferance(self):
        c=2*3.14*self.r
        print("circumferance is ",c)
    
a=circle(5)
a.area()
a.circumferance()


# In[ ]:





# In[16]:


from abc import ABC


# In[17]:


class shape(ABC):
    def area(self):
        pass

class Circle(shape):
    def __init__(self,n):
        self.r=n
    def area(self):
        a=3.14*self.r**2
        print("Area is ", a)
        
class Rectangle(shape):
    def __init__(self,m,n):
        self.l=m
        self.b=n
    def area(self):
        a=self.l*self.b
        print("Area is ",a)

s=Circle(5)
s=area()
q=Rectangle(5,10)
q.area()


# In[19]:


class shape(ABC):
    def area(self):
        pass

class Circle(shape):
    def __init__(self,n):
        self.r=n
    def area(self):
        a=3.14*self.r**2
        print("Area is ", a)
        
class Rectangle(shape):
    def __init__(self,m,n):
        self.l=m
        self.b=n
    def area(self):
        a=self.l*self.b
        print("Area is ",a)

s=Circle(5)
s.area()
q=Rectangle(5,10)
q.area()


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




