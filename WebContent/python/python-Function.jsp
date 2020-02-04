<h3>In Python function are two type</h3>
<ul>
  <li> predefined function </li>
  <li> user-defined function</li>
</ul>
<h3>Type of function arguments in python</h3>
<ul>
	<li>required arguments</li> 
	<li>default arguments</li>
	<li>keyword arguments</li>
	<li>var-arguments(*args)</li>
	<li>keyword var-arguments(**kwargs)</li>
</ul>
<h3>Required Arguments in python</h3>
<pre>
def getDetail(uid,gid,username):#function definition
	#function body
	print(uid,"  ",gid,"  ",username)
getDetail(1001,1002,"aman")	# function calling
</pre>
<p><strong>Note:</strong> uid,gid and username is Required Arguments,that's mean when you calling the function then put all arguments value</p>
<pre>
1001    1002    annu
</pre>
<h3>Default Arguments in python</h3>
<pre>
def getDetail(uid=1001,gid=1002,username="redhat"):
	print(uid,"  ",gid,"  ",username)
getDetail(1011,1012,"aman")	
getDetail(1011,1012)
getDetail(1011)
getDetail()
</pre>
<pre>
1011    1012    aman
1011    1012    redhat
1011    1002    redhat
1001    1002    redhat
</pre>
<h3>Keyword Arguments in python</h3>
<pre>
def getDetail(uid,gid,username,comment,home):
	print("UID:",uid)
	print("GID:",gid)
	print("User Name:",username)
	print("Comment:",comment)
	print("Home:",home)
getDetail(uid=1001,gid=1002,username="emp",comment="user",home="/home/emp")
print("====================")
getDetail(home="/home/emp",comment="user",uid=1001,gid=1002,username="emp")
</pre>
<pre>
UID: 1001
GID: 1002
User Name: emp
Comment: user
Home: /home/emp
====================
UID: 1001
GID: 1002
User Name: emp
Comment: user
Home: /home/emp
</pre>