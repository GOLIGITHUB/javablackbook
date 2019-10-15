 <h1>Inheritance</h1>
<p>In Python object class is super class all python classs</p>
<p>In python our class is child class by default</p>
<p>if method or constructor or variable is not available in child class.
	then implicitly execute parent class method or constructor or variable
</p>
<pre>
class A10:
	pass
class B10:
	pass
class C10:
	pass
class D10(object):
	pass
print(issubclass(A10,object))
print(issubclass(B10,object))
print(issubclass(C10,object))				
print(issubclass(D10,object))
</pre>

<pre>
True
True
True
True
</pre>

<pre>
class A10:
	pass
class B10(A10):
	pass
class C10(B10):
	pass
class D10(object):
	pass
print(issubclass(A10,object))
print(issubclass(B10,object))
print(issubclass(C10,object))				
print(issubclass(D10,object))
</pre>
<pre>
True
True
True
True
</pre>
<pre>
class A10:
	pass
class B10(A10,object):
	pass
class C10(B10,object):
	pass
class D10(C10,object):
	pass
print(issubclass(A10,object))
print(issubclass(B10,object))
print(issubclass(C10,object))				
print(issubclass(D10,object))
</pre>

<pre>
True
True
True
True
</pre>
<pre>
class A10:
	def displayInsatneMethod1(self):#instance method
		print("Instance Method A10")
class B10(A10):
	def displayInsatneMethod2(self):#instance method
		print("Instance Method B10")
b10=B10();#child class Object
b10.displayInsatneMethod1()
b10.displayInsatneMethod2()	
</pre>
<pre>
Instance Method A10
Instance Method B10
</pre>
<h2>if child have no constructor implicitly execute parent class constructor </h2>
<pre>
class A10:
	
	def __init__(self):
		print("parent class Constructor")

class B10(A10):
	
	pass

b10=B10();#child class Object

</pre>
<pre>
parent class Constructor
</pre>
<h2>if child have constructor then it not go to the parent class</h2>
<pre>
class A10:
	
	def __init__(self):
		print("parent class Constructor")

class B10(A10):
	
	def __init__(self):
		print("child class Constructor")

b10=B10();#child class Object
</pre>
<pre>
child class Constructor
</pre>
