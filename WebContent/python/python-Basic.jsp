<h1>Some approaches to run the python code </h1>
<ul>
	<li>Interactive mode, IDLE(integrated development and learning environment)</li>
	<li>Script mode, IDLE(integrated development and learning environment)</li>
	<li>Using CMD</li>
	<li>Using Advanced editors like Sublime, notepad++, Editplus </li>
	<li><a href="https://repl.it/" style="color:blue;">For online</a></li>
	<li><a href="https://www.jetbrains.com/pycharm/" style="color:blue;">More Advanced Pycharm IDE</a></li>
</ul>
<h1>How to create comment in Python</h1>
<p>Comment General use to maintaining the application. and It's easy to understand another developer</p>
<p><strong>Two Way to Create Comment in python</strong></p>
<p><strong>1</strong></p>
<pre>
'''
it is used for multiple line comment
it is used for multiple line comment
it is used for multiple line comment
it is used for multiple line comment
'''
</pre>
<p><strong>2</strong></p>
<pre>
#it is used for single-line comment
</pre>
<h1>Python keyword</h1>
<p>Python Keywords is a word having special meaning reserved by programming language</p>
<table class="table">
	<tr class="success">
		<td>False</td>
		<td>None</td>
		<td>True</td>
		<td>and</td>
		<td>as</td>
	</tr>
	<tr>
		<td>assert</td>
		<td>async</td>
		<td>await</td>
		<td>break</td>
		<td>class</td>
	</tr>
	<tr class="success">
		<td>continue</td>
		<td>def</td>
		<td>del</td>
		<td>elif</td>
		<td>else</td>
	</tr>
	<tr>
		<td>except</td>
		<td>finally</td>
		<td>for</td>
		<td>from</td>
		<td>global</td>
	</tr>
	<tr class="success">
		<td>if</td>
		<td>import</td>
		<td>in</td>
		<td>is</td>
		<td>lambda</td>
	</tr>
	<tr>
		<td>nonlocal</td>
		<td>not</td>
		<td>or</td>
		<td>pass</td>
		<td>raise</td>
	</tr>
	<tr class="success">
		<td>return</td>
		<td>try</td>
		<td>while</td>
		<td>with</td>
		<td>yield</td>
	</tr>
</table>
<pre>
import keyword
# if is predefine identifier  so that ture
print(keyword.iskeyword("if"))
# super is not predefine identifier  so that false
print(keyword.iskeyword(super))
# import is predefine identifier  so that true
print(keyword.iskeyword("import"))
# Ashutosh is predefine identifier  so that false
print(keyword.iskeyword("Ashutosh"))
</pre>
<pre>
True
False
True
False
</pre>

<h3>Python Identifier</h3>
<p><strong>NOTE : </strong> python variable,method,class name Identifier start with small a to z , capital A to Z and _(underscor)</p>
<p><strong>NOTE : </strong> python variable,method,class name Identifier should not start with numarics  & dons'nt allow special symbols</p>
<p><strong>NOTE : </strong> python variable,method,class name Identifier is case sensitive</p>
<p><strong>NOTE : </strong> Keyword is not allow Identifer</p>
<p><strong>NOTE : </strong> python variable,method,class name Identifie no limit </p>
<p><strong>NOTE : </strong> python variable,method,class name Identifie duplicate name allow </p>

<p><strong>Use isidentifire() fuction you check your varible name right or wrong in Pyhton</strong></p>
<pre>
# use isidentifire() fuction you check your varible name right or wrong
print("name".isidentifier())
print("1name".isidentifier())
print("name.gmail".isidentifier())
print("name_gmail".isidentifier())
</pre>

<pre>
True
False
False
True
</pre>
<h1>id() and type() Function In Python</h1>
<pre>
#id() and type() function use for implicitly value of varibale
empid=12002
empname="ashutosh"
empsalary=25.2
empstatus=True;
emp=1;
lang={"core java","Advance java","python only"}
print("Implicitly ID: ",id(empid),"Implicitly datatype: ",type(empid))
print("Implicitly ID: ",id(empname),"Implicitly datatype: ",type(empname))
print("Implicitly ID: ",id(empsalary),"Implicitly datatype: ",type(empsalary))
print("Implicitly ID: ",id(empstatus),"Implicitly datatype: ",type(empstatus))
print("Implicitly ID: ",id(emp),"Implicitly datatype: ",type(emp))
print("Implicitly ID: ",id(lang),"Implicitly datatype: ",type(lang))
</pre>

<pre>
<code>
Implicitly ID:  14827392 Implicitly datatype:  <class 'int'>
Implicitly ID:  15359056 Implicitly datatype:  <class 'str'>
Implicitly ID:  14824992 Implicitly datatype:  <class 'float'>
Implicitly ID:  1389297984 Implicitly datatype:  <class 'bool'>
Implicitly ID:  1389422512 Implicitly datatype:  <class 'int'>
Implicitly ID:  15790680 Implicitly datatype:  <class 'set'>
</code>
</pre>

<h3>In python separator</h3>
<pre>
def getMySeparator():
	print(10,20,30,40,50,sep='%')
	print("ashu","aman","arun",sep="*")
	print(1,1,1,sep="**")
getMySeparator()	
</pre>
<pre>
10%20%30%40%50
ashu*aman*arun
1**1**1
</pre>
