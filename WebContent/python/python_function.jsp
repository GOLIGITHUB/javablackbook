 <p><h1>Function:</h1></p>
<p>
	A function is a block of organized,reusable code that is used to preform a single,related action
</p>
<ol>
	<li>Predefined Functions</li>
	<li>User define Functions</li>
</ol>
<h2><strong>User define Functions</strong></h2>
<pre id="codepre">
	<code>
def function(a,b):
	c=a+b
	return c
p=function(10,30)	
print("Retrun Value:",p)
	</code>
</pre>
<pre  id="outputpre">
<strong>Output:</strong>	
E:\J-PYTHON-CMD>function.py
Retrun Value: 40
</pre>
<h3>
	when we have two function with same name,first function reclaimed for garbage collection.second one function will be used to preform tasks.
</h3>

<pre id="codepre">
	<code>
def function1(a,b):
	c=a+b
	return c
def function1(a,b):
	c=a*b
	return c
p=function1(5,2)	
print("Addition Retrun Value:",p)
p=function1(5,5)	
print("Multiply Retrun Value:",p)
	</code>
</pre>
<pre  id="outputpre">
<strong>Output:</strong>	
E:\J-PYTHON-CMD>"function multiple time.py"
Addition Retrun Value: 10
Multiply Retrun Value: 25
E:\J-PYTHON-CMD>
</pre>
<pre id="codepre"ss>
	<code>
def function1(a,b):
	c=a+b
	print("Addition Retrun Value:",c)
def function1(a,b):
	c=a*b
	print("Multiply Retrun Value:",c)
function1(5,2)	
function1(5,5)	
	</code>
</pre>
<pre  id="outputpre">
<strong>Output:</strong>	
E:\J-PYTHON-CMD>"function multiple time.py"
Multiply Retrun Value: 10
Multiply Retrun Value: 25
E:\J-PYTHON-CMD>
</pre>