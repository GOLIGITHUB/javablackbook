<h1>Super keyword in python</h1>
<ul>
  <li> super can invoke parent class method </li>
  <li> super can invoke parent class constructor </li>
  <li> super can invoke parent class variable </li>
</ul>
<h2>super can invoke parent class method</h2>
<p>calling super class methods : by using super()</p>

<pre>
class A10:
	def displayInsatneMethod1(self):
		print("Instance Method A10")
class B10(A10):
	def displayInsatneMethod2(self):
		print("Instance Method B10")
		super().displayInsatneMethod1()	
b10=B10();#child class Object
b10.displayInsatneMethod2()
</pre>

<pre>
Instance Method B10
Instance Method A10
</pre>

<h2>super can invoke parent class method with argument</h2>

<pre>
class A10:
	def displayInsatneMethod1(self,fname,lname):
		print("Instance Method A10 :", fname ,lname )
class B10(A10):
	def displayInsatneMethod2(self):
		print("Instance Method B10")
		super().displayInsatneMethod1("ABC","XYZ")	
b10=B10();#child class Object
b10.displayInsatneMethod2()
</pre>

<pre>
Instance Method B10
Instance Method A10 : ABC XYZ
</pre>

<h2>super invoke parent class, Variable. with different  name</h2>

<pre>
comName="XYZ"
localtion="UP"
class A10:
	comName1="JBB"
	localtion1="US"
	
class B10(A10):

	comName2="APP"
	localtion2="California"

	def displayInsatneMethod2(self,comName3,localtion3):
		#self check current class have fname and lname .if not then preferr to parent class fname and lanme
		print(self.comName1+" "+self.localtion1)#as class variable
		print(self.comName2+" "+self.localtion2)#as class variable
		print(globals()['comName']+" "+globals()['localtion'])#as globals variable
		print(comName3+" "+localtion3)#as local variable
b10=B10();#child class Object
b10.displayInsatneMethod2("JBBAPP","Germany")		
</pre>

<pre>
JBB US
APP California
XYZ UP
JBBAPP Germany
</pre>

<h2>super invoke parent class, class variable. with same name</h2>

<pre>
comName="XYZ"
localtion="UP"
class A10:
	comName="JBB"
	localtion="US"
	
class B10(A10):

	comName="APP"
	localtion="California"

	def displayInsatneMethod2(self,comName3,localtion3):
		print(self.comName+" "+self.localtion)#current class variable comName and localtion
		print(super().comName+" "+super().localtion)#parent class variable comName and localtion
		print(globals()['comName']+" "+globals()['localtion'])#as globals variable
		print(comName3+" "+localtion3)#as local variable
b10=B10();#child class Object
b10.displayInsatneMethod2("JBBAPP","Germany")	
</pre>

<pre>
APP California
JBB US
XYZ UP
JBBAPP Germany
</pre>
<h2>Super invoke parent class default constructor</h2>

<pre>
class A10:

	def __init__(self):
		print("Default Constructor A10")

class B10(A10):

	def __init__(self):
		print("Default Constructor B10")
		super().__init__()	

b10=B10();#child class Object
</pre>
<pre>
Default Constructor B10
Default Constructor A10
</pre>
<h2>Super invoke parent class parameterized constructor</h2>
<pre>
class A10:

	def __init__(self,fname,lname):
		print("Default Constructor A10 :", fname, lname)

class B10(A10):

	def __init__(self):
		print("Default Constructor B10")
		super().__init__("JBB","Pvt. Ltd.")	

b10=B10();#child class Object
</pre>
<pre>
Default Constructor B10
Default Constructor A10 : JBB Pvt. Ltd.
</pre>
<h2>Parent class Constructor call multiple  time form child class</h2>
<pre>
class A10:
	
	def __init__(self):
		print("parent class Constructor")

class B10(A10):
	
	def __init__(self):
		super().__init__()
		print("child class Constructor")
		super().__init__()
		super().__init__()

b10=B10();#child class Object
</pre>
<pre>
parent class Constructor
child class Constructor
parent class Constructor
parent class Constructor
</pre>
<h2>Two way to call parent class constructor</h2>
<ul>
	<li>by super keyword</li>
	<li>by parent class Name : </li>
</ul>
<pre>
class A10:
	
	def __init__(self):
		print("parent class Constructor")

class B10(A10):
	
	def __init__(self):
		super().__init__()
		print("child class Constructor")
b10=B10();#child class Object
</pre>
<pre>
parent class Constructor
child class Constructor
</pre>
<p>Here if you are calling the parent class constructor by using class Name </p>