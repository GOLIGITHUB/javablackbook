<h1>A different way to define a variable in python</h1>
<pre>
age=10
name="ashu"
print(age," ",name)
age,name=25,"aman"
print(age," ",name)
a=b=c=100
print(a," ",b," ",c)
</pre>
<pre>
10   ashu
25   aman
100   100   100
</pre>
<h1>Python concatenation </h1>
<p><strong>Python Concat only similar type of data.If in python add two different types of data then show error</strong></p>
<pre>
print(10+20)
print("ashu"+"goli")
print(True+True)
print(False+False)
print(15.5+15.6)
#print("aman"+12.8) #TypeError: can only concatenate str (not "float") to str
print(100+True+False)
print(100+15.6)
print(12.7+True)
</pre>

<pre>
30
ashugoli
2
0
31.1
101
115.6
13.7
</pre>
<h3>Resign variable in python is possible but other languages it not possible</h3>
<h3>Two variable swappings program in python</h3>
<pre>
a,b=10,20
print("Before Swapping")
print("a : ",a," b: ",b)
a,b=b,a
print("After Swapping")
print("a : ",a," b: ",b)
</pre>
<pre>
Before Swapping
a :  10  b:  20
After Swapping
a :  20  b:  10
</pre>
<h3>How to delete a varible in python</h3>
<p><strong>in python delete a variable using a del keyword. if we delete a variable then release the memory</strong></p>
<pre>
a=100
print(a)
del a
print(a)
</pre>
<pre>
100
Traceback (most recent call last):
  File "Key.py", line 4, in <module>
    print(a)
NameError: name 'a' is not defined
</pre>
<h3>Different way to print data in python</h3>
<pre>
stdId,stdName,stdresult=1001,"Ashu",True
print(stdId,stdName,stdresult)
print(stdId)
print(stdName)
print(stdresult)
print("Student ID: ",stdId)
print("Student Name",stdName)
print("Student Result",stdresult)
print("Student ID: ",stdId," Student Name",stdName," Student Result",stdresult)
</pre>
<pre>
1001 Ashu True
1001
Ashu
True
Student ID:  1001
Student Name Ashu
Student Result True
Student ID:  1001  Student Name Ashu  Student Result True
</pre>
<h1>In Python Variable are three type</h1>
<ul>	
		<li> Local Variable</li>
		<li> Class Variable</li>
		<li> Instance Variable</li>
		<li> Global Variable</li>
</ul>
<p><strong>Local Variable : </strong>In python if you define a variable inside constructor or method this is called Local variable</p>
<p><strong>NOTE 1 :</strong> : method and constructor args is also called Local variable</p>
<p><strong>NOTE 2 :</strong> : Local Variable Scope inside method  and constructor only</p>
<p><strong>NOTE 3 :</strong> : Local Variable Memory allocate when method  and constructor class</p>
<pre>
class LocalVariable:
	def __init__(self,fname):
		lname="xyz" #Local Variable
		print(fname+" "+lname)
e1=LocalVariable("abc")
</pre>
<pre>
abc xyz
</pre>
<p><strong>Class Variable : </strong>In python if you define a variable inside class but
 out side method  and constructor is called class variable</p>
<p><strong>NOTE 1 :</strong> class variable access with class name and self keyword</p>
<p><strong>NOTE 2 :</strong> class Variable Scope inside class  only</p>
<p><strong>NOTE 3 :</strong> It recmmonded to access the class variable with class name</p>
<p><strong>NOTE 3 :</strong> : Class Variable Memory allocate when dot pyc file loaded</p>
<pre>
class ClassVariable:

	i=1 #class variable

	def __init__(self):
		print(ClassVariable.i,"  ",self.i)
	
	def getMethod(self):	
		print(ClassVariable.i,"  ",self.i)

e1=ClassVariable().getMethod()
</pre>
<p><strong>Instance Variable :</strong>In python if you define a variable inside method and constructor using self keyword is called
Instance Variable </p>
<p><strong>NOTE 1 :</strong> Instance Variable Scope inside class  only</p>
<p><strong>NOTE 2 :</strong> Instance Variable Memory allocate when object create</p>
<pre>
class InstanceVariable:

	def __init__(self,i):
		self.i=i # instance variable

	def getMethod(self):	
		print(self.i)

e1=InstanceVariable(10).getMethod()
</pre>
<pre>
10
</pre>
<p><strong>Global Variable : </strong> In python if you define a variable outside class is called globale variable</p>
<p><strong>NOTE 1 :</strong> is side function to declear global variable using global keyword </p>
<p><strong>NOTE 2 :</strong> global variable direct access by name </p>
<p><strong>NOTE 3 :</strong> global variable Scope in dot py file </p>
<p><strong>NOTE 4 :</strong> inside the method once we are using global variable, in this case with the same name it is not
possible to declare Local variable</p>
<pre>
abc=100
class InstanceVariable:

	def __init__(self):
		print(abc)

	def getMethod(self):	
		print(abc)

e1=InstanceVariable().getMethod()
print(abc)
</pre>
<pre>
100
100
100
</pre>
<pre>
comName="XYZ"
localtion="UP"
class B10:
	def __init__(self):
		comName="ABC"
		localtion="Pune"
		print(comName,"  ",localtion)
b10=B10()
</pre>
<pre>
ABC    Pune
</pre>
<p><strong>CASE 1 : </strong></p>
<pre>
comName="XYZ"
localtion="UP"
class B10:
	def __init__(self):
		print(comName,"  ",localtion)
		comName="ABC"
		localtion="Pune"
		print(comName,"  ",localtion)
b10=B10()
</pre>
<pre>
UnboundLocalError: local variable 'comName' referenced before assignment
</pre>
<pre>
i=10
class B10:
	def __init__(self):
		i=i+20
		print(i)			
b10=B10()
</pre>
<pre>
UnboundLocalError: local variable 'i' referenced before assignment
</pre>
<p><strong>CASE 1 : </strong></p>
<p><strong>In side function or constructor to repersent the global variable using global keyword</strong>
<pre>
comName="XYZ"
localtion="UP"
class B10:
	def __init__(self):
		global comName,localtion
		print(comName,"  ",localtion)
		comName="ABC"
		localtion="Pune"
		print(comName,"  ",localtion)

b10=B10()
print(comName,"  ",localtion)
</pre>
<pre>
XYZ    UP
ABC    Pune
ABC    Pune
</pre>
<p><strong> in side the inner to repersent outer function variable using localvariable </strong>
<pre>
def outerFunction():
	name="Ashu"
	def innerFunction():
		nonlocal name
		name="soonu"
	print(name)
	innerFunction()
	print(name)
outerFunction()		
</pre>
<pre>
Ashu
soonu
</pre>
<p><strong> python global vs nonlocal keyword </strong>
<pre>
name="ABC"
def outerFunction():
	fname="Ashu"
	def innerFunction():
		nonlocal fname
		fname="soonu"
		global name
		name="XYZ"

	print(name)
	innerFunction()
	print(name)

outerFunction()
print(name)
</pre>
<pre>
ABC
XYZ
XYZ
</pre>
<h4>All Variable with same name in python</h4>
<pre>
comName="XYZ"
localtion="UP"
class B10:

	comName="APP"
	localtion="California"
	
	def __init__(self,comName,localtion):
			self.comName=comName
			self.localtion=localtion

	def displayAllVaraible(self):

		comName="ABC"
		localtion="pune"

		#as local variable
		print(comName+" "+localtion)

		#instance variable
		print(self.comName+" "+self.localtion)
		
		#class variable comName and localtion
		print(B10.comName+" "+B10.localtion)
		
		#as globals variable
		print(globals()['comName']+" "+globals()['localtion'])
		
b10=B10("JBBAPP","Germany")
b10.displayAllVaraible()
</pre>
<pre>
ABC pune
JBBAPP Germany
APP California
XYZ UP
</pre>

 