<p><strong>Exception</strong>: Exception that means abnormal behaviour</p>
<p><strong>Exception</strong>: When in program exception raised program terminated abnormal 
							   and rest of code not executed</p>
<p><strong>Exception</strong>: In python exception that means error</p>
<h3>In python two type of error</h3>
<ul>
	<li>syntax error</li>
	<li>runtime error is call exception</li>
</ul>
<h3>In python error handing useing 5 keyword</h3>
<ul>
	<li>try</li>
	<li>except</li>
	<li>else,default except</li>
</ul>
<h3>Python Exception Handing</h3>
<p>if we use Exception handing mechanism.Then in program exception raised, program terminated normally 
and rest of code executed</p>
<h3>Without exception handing,program terminated abnormal and rest of code not executed</h3>
<pre>
print("hello 1")
print("hello 2")
print("hello 3")
print("hello 4")
print(10/0)
print("hello 5")
print("hello 6")
print("hello 7")
</pre>
<pre>
hello 1
hello 2
hello 3
hello 4
Traceback (most recent call last):
  File "b10.py", line 5, in <module>
    print(10/0)
ZeroDivisionError: division by zero
</pre>
<h3>With exception handing,program terminated normally and rest of code executed</h3>
<pre>
print("hello 1")
print("hello 2")
print("hello 3")
print("hello 4")
try:
	print(10/0)
except ZeroDivisionError as e:
	print(e)	
print("hello 5")
print("hello 6")
</pre>
<pre>
hello 1
hello 2
hello 3
hello 4
division by zero
hello 5
hello 6
</pre>
<h3>if except block doesn't match, program terminated abnormal</h3>
<pre>
print("hello 1")
print("hello 2")
print("hello 3")
print("hello 4")
try:
	print(10/0)
except TypeError as e:
	print(e)	
print("hello 5")
print("hello 6")
</pre>
<pre>
hello 1
hello 2
hello 3
hello 4
Traceback (most recent call last):
  File "b10.py", line 6, in <module>
    print(10/0)
ZeroDivisionError: division by zero
</pre>
<h3>Only try block are not allowed,it give SyntaxError</h3>
<pre>
print("hello 1")
print("hello 2")
try:
	print(10/0)
print("hello 4")
print("hello 5")
</pre>
<pre>
  File "b10.py", line 5
    print("hello 4")
        ^
SyntaxError: invalid syntax
</pre>
<h3>Exception with try,except and with else block</h3>
<p>else block execute when no exception raised<p> 
<pre>
print("Hello1")
try:
    print(10/0)
except ArithmeticError as e:
#ArithmeticError is parent class
# and ZeroDivisionError is child class
    print("Exception :",e)
else:
	print("if try block no exception")    
print("Rest of code")    
</pre>
<pre>
Hello1
Exception : division by zero
Rest of code
</pre>
<p><strong>else block execute when no exception raised</strong><p> 
<pre>
print("Hello1")
try:
    print(10/5)
except ArithmeticError as e:
#ArithmeticError is parent class
# and ZeroDivisionError is child class
    print("Exception :",e)
else:
	print("if try block no exception")    
print("Rest of code")    
</pre>
<pre>
Hello1
2.0
if try block no exception
Rest of code
</pre>
<h3>default block except we enter string</h3>
<pre>
print("Hello1")
try:
	a=int(input("enter a number : "))
	print(10/a)
except ArithmeticError as e:
    print("Exception :",e)
except : 
	print("default exception")   
else:
	print("if try block no exception")    

print("Rest of code")
</pre>
<pre>
Hello1
enter a number : STRING
default exception
Rest of code
</pre>