<h1>Operators in Python</h1>
<p><strong>7 type of Operators in python</strong>
<ol>
	<li>Arithmetic Operators </li>
	<li>Comparison Operators</li>
	<li>Assignment Operators</li>
	<li>Identity Operators</li>
	<li>Bitwise Operators</li>
	<li>Membership Operators</li>
	<li>Logical Operators</li>
</ol>
<p><h2>Arithmetic Operators</h2></p>
<pre id="codepre">
	<code>
		#addition
		a=20;
		b=10;
		c=a+b
		print("ADD:",c)
		#Subtraction
		s=a-b
		print("SUB:",s)
		#Multiplication
		m=a*b
		print("MULTI:",s)
		#Division
		d=a/b
		print("DIV:",d)
		#Modulus
		x=23
		y=5
		mo=x%y
		print("%:",mo)
		mo=x/y
		print("/:",mo)
		#Exponent
		i=2;
		j=3
		#k=i**j
		print("Exponent:",i**j)

	</code>
</pre>
<pre id="outputpre"><strong>Output:</strong>
ADD: 30
SUB: 10
MULTI: 10
DIV: 2.0
%: 3
/: 4.6
Exponent: 8
</pre>
<p><h2>Comparison Operators</h2></p>
<pre id="codepre">
	<code>
		#Equal value of two operands
		a=10
		b=5
		if(a==b):
		    print("Both are same")
		else:
		    print("Both are not same")	
		#if the value of two operands is not same
		if(a!=b):
		    print("Yes' Both are not same")
		else:
		    print("Both are same")	
		#if the left operand is greater than right
		
		if(a>b):
		    print("Yes")
		else:
		    print("No")	
		#if the left operand is greater than or equal to right
		if(a<=b):
		    print("Yes")
		else:
		    print("No")	
		#if the right operand is greater than or equal to left
		if(a>=b):
		    print("Yes")
		else:
		    print("No")			
	</code>
</pre>
<pre id="outputpre"><strong>Output:</strong>
	Both are not same
	Yes' Both are not same
	No
	Yes
	No
	Yes
</pre>
<p><h2>Assignment Operators</h2></p>
<pre id="codepre">
	<code>
	#Assign value
	i=10
	j=5
	k=0
	#Add right to left and result is stored in the left operand
	k=i+j
	print(k)
	k+=i
	print(k)
	#Subtacts right to letf and result is stored in the left operand
	k-=i
	print(k)
	#Multiply right to letf and result is stored in the left operand
	k*=i
	print(k)
	#Divides left to right and result is stored in the left operand
	k/=i
	print(k)
	#Take modulus using two operands and assign the value in the operand
	k/=i
	print(k)
	#performs the exponential operation on two numbers and stores
	k**=i
	print(k)
</code>
</pre>	
<pre id="outputpre" ><strong>Output:</strong>
15
25
15
150
15.0
1.5
57.6650390625
</pre>
<p><h2>Identity Operators</h2></p>
<p><strong>is :</strong>
Evaluates to ture if the variables on either side of the operator point to the same object and false otherwise
</p>
<p><strong>is not :</strong
>	
Evaluates to false if the variables on either side of the operator point to the same object and true otherwise
</p>
<pre id="codepre">
	<code>
		a=10
		b=10
		print("Both are equal:",a is b)
		print("Both are not equal:",a is not b)	
	</code>
</pre>
<pre id="outputpre"><strong>Output:</strong>
Both are equal: True
Both are not equal: False
</pre>
<p><h2>Bitwise Operators</h2></p>
<pre><strong>Comeing Soon...</strong></pre>
<p><h2>Membership Operators</h2></p>
<p><strong>in :</strong>
	Evaluates to true if it finds a variable in the specified sequence and false otherwise
</p>
<p><strong>not in :</strong>Evaluates to true if it does not find a variable in the specified sequence and false otherwise</p>
<pre id="codepre">
	<code>
		s1="annu"
		s2="roohi"
		list1=['annu','aman','arun','triloki']
		print(s1 in list1)
		print(s2 not in list1)
	</code>
</pre>
<pre id="outputpre"><strong>Output:</strong>
True
True	
</pre>
<p><h2>Logical Operators</h2></p>
<p><strong>a and b :</strong>returns a if a is false,b otherwise</p>
<p><strong>a or  b :</strong>returns b if b is false, a otherwise</p>
<p><strong>a not b :</strong>Returns true if a is true ,false otherwise</p>
<pre  id="codepre">
	<code>
		a=0
		b=1
		print(a and b)
		print(a or b)
		print(not a)
	</code>
</pre>
<pre id="outputpre"><strong>Output:</strong>
0
1
True
</pre>