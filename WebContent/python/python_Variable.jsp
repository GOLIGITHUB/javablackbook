<p><strong>Variable:</strong>Variable  are  nothing but reserved memory location to
store values.this means that when you create  avariable you reserve some space in memory</p>
<p><strong>Note:python is not differentiate in double and singale qute</strong></p>
<p><strong>Data Type:</strong>A  data type ,in programming, is a classification that specifies which type of  value  a variable  has and what type  of mathematical,
relation </p>
<p><strong>Type of data</strong></p>
<p>in python 8 type of data type</p>
<p>1:Numeric</p>
<p>2:List</p>
<p>3:Tuple</p>
<p>4:Strings</p>
<p>5:set</p>
<p>6:Dictionary</p>
<p><strong>Numeric</strong></p>
<p>number data type are used to store numeric value</p>
<p>There are four different numerical type in python</p>
<ol>
	<li>integer type</li>
	<li>Float type</li>
	<li>complex type</li>
	<li>long type</li>
</ol>
<p><strong>integer</strong></p>
<p>integer convert into float</p>
<p>float convert into integer</p>
<p>but complex not convert into integer or float viseversa</p>
<p><strong>List:</strong></p>
<p>the list is amost versatie datatye in python which can be written  as a list od
	comma-separated values(items) between square brackets</p>
<pre>
	<strong>Syntax:</strong>
	list1=['ashu','java',2000,2017]

</pre>	
<p><strong>list opration:</strong></p>
	<ol>
		<li>accessing values in lists</li>
		<li>Updating</li>
		<li>List length</li>
		<li>Repetit		ion</li>
		<li>delete  list elements</li>
		<li>concatenation</li>
	</ol>
<pre id="codepre" >
<code>#define a list
	#by default indexing start from 0 same c++,java
	honadList=['Honda City','Honda WR-V','Honda Jazz','Honda Amaze','Honda Accord']
	print(honadList)
	bankList=['PBN',"SBI","ICICI",'AXS',"HDFC","INDAIN"]
	print(bankList)
	#update a list
	honadList[0]="Maruti Suzuki Baleno" 
	print(honadList)
	#print the length of a list
	print("Both list all element number:")
	print(len(honadList)+len(bankList))
	#print an element of the list
	print(bankList)
	#print a part of the list
	print(bankList[0:3])
	#Concatenation of list
	laguageList=['JAVA','Python','Android','Big-Hadoop','Adnvance Java']
	laguageStudent=['Abhay','sunny','amir','ehsan']
	print(laguageList+laguageStudent)
	#print list multiple times
	print(laguageStudent*2)
</code></pre>	
<pre  id="outputpre"><strong>Output:</strong>
C:\python>"List data type.py"
['Honda City', 'Honda WR-V', 'Honda Jazz', 'Honda Amaze', 'Honda Accord']
['PBN', 'SBI', 'ICICI', 'AXS', 'HDFC', 'INDAIN']
['Maruti Suzuki Baleno', 'Honda WR-V', 'Honda Jazz', 'Honda Amaze', 'Honda Accord']
Both list all element number:11
['PBN', 'SBI', 'ICICI', 'AXS', 'HDFC', 'INDAIN']
['PBN', 'SBI', 'ICICI']
['JAVA', 'Python', 'Android', 'Big-Hadoop', 'Adnvance Java', 'Abhay', 'sunny','amir', 'ehsan']
['Abhay', 'sunny', 'amir', 'ehsan', 'Abhay', 'sunny', 'amir', 'ehsan']
</pre>
<p><strong>Tuples Data Type:</strong></p>
<p>
	A tuple is a sequence  of immutable python object.tuples are sequences,just like list
</p>
<pre><strong>Syntax:</strong>
	  tuple1=('monday',tuesday,wednesday,tursday,friday,saturday,sunday)</pre>
	
<p><strong>tuple opration:</strong></p>
	<ol>
		<li>accessing values in tuples</li>
		<li>Updating tuple</li>
		<li>Delete tuple Elements</li>
		<li>Tuple length</li>
		<li>Repetition</li>
		<li>concatenation</li>
	</ol>	  
<p>tuple inclose with in pranthisise and can't be change or updated.that is why we call immutable nature  or for read only DataType</p>
<pre><code>
	#define tuple
	honadList=('Honda City','Honda WR-V','Honda Jazz','Honda Amaze','Honda Accord')
	print(honadList)
	bankList=('PBN',"SBI","ICICI",'AXS',"HDFC","INDAIN")
	print(bankList)
	laguageList=('JAVA','Python','Android','Big-Hadoop','JAVA')
	print(laguageList)
	laguageStudent=('sunny','sunny','amir','ehsan')
	print(laguageStudent)
	#update a tuple
	#laguageList[3]="CSS+HTML"#we can't change because tuple is immutable nature
	print(laguageList)
	#print the length of a tuple
	print(len(laguageList))
	#print an element  of the  tuple
	c=laguageStudent[0:2]
	print(c)
	print(laguageList[2])
	#print a part of  the tuple
	c=laguageStudent[0:2]
	print(c)
	#Concatenation of tuple
	degine=('HTML','HTML5',"CSS","CSS3","Bootstrup")
	print(laguageList+degine)
	#print tuple multiple  times
	print(degine,degine)
	print("****************************************************")
	print(degine*3)
</code></pre>
<pre id="outputpre"><strong>Output:</strong>
C:\python>"Tuple data type.py"
('Honda City', 'Honda WR-V', 'Honda Jazz', 'Honda Amaze', 'Honda Accord')
('PBN', 'SBI', 'ICICI', 'AXS', 'HDFC', 'INDAIN')
('JAVA', 'Python', 'Android', 'Big-Hadoop', 'JAVA')
('sunny', 'sunny', 'amir', 'ehsan')
('JAVA', 'Python', 'Android', 'Big-Hadoop', 'JAVA')
5
('sunny', 'sunny')
Android
('sunny', 'sunny')
('JAVA', 'Python', 'Android', 'Big-Hadoop', 'JAVA', 'HTML', 'HTML5', 'CSS', 'CSS3', 'Bootstrup')
('HTML', 'HTML5', 'CSS', 'CSS3', 'Bootstrup') ('HTML', 'HTML5', 'CSS', 'CSS3', 'Bootstrup')
****************************************************
('HTML', 'HTML5', 'CSS', 'CSS3', 'Bootstrup', 'HTML', 'HTML5', 'CSS', 'CSS3', 'Bootstrup', 'HTML', '
HTML5', 'CSS', 'CSS3', 'Bootstrup')
</pre>
<p><strong>String Data Type:</strong></p>
<p>A String in python is sequence of characters. we can Create String by enclosing 
 characters is quotes.python treats single quotes the same as double quotes.</p>
 <p>
 	<strong>name="Annu" or name='Annu' (Both are same)</strong>
 </p>
  	<table>
 		  <tr>
 		  	<th>Opreation</th>
 		  	<th>Syntax</th>
 		  </tr>	
 		  <tr>
 		  	<td>String length</td>
 		  	<td>print(len(string_name))</td>
 		  </tr>	
 		  <tr>
 		  	<td>Locate a character in string</td>
 		  	<td>print(string_name.index("char"))</td>
 		  </tr>	
 		  <tr>
 		  	<td>Count  the number of times a character is repeated in string</td>
 		  	<td>print(string_name.count("char"))</td>
 		  </tr>
 		  <tr>
 		  	<td>print part of the String</td>
 		  	<td>print(string_name[start:stop])</td>
 		  </tr>	
 		  <tr>
 		  	<td>Reserse a string</td>
 		  	<td>print(string_name[::-1])</td>
 		  </tr>
 		  <tr>
 		  	<td>convert the letters in a string to upper-case</td>
 		  	<td>print(string_name.upper())</td>
 		  </tr>
 		  <tr>
 		  	<td>convet the letters in a String to lower-case</td>
 		  	<td>print(string_name.lower())</td>
 		  </tr>		
	</table>

 
<pre id="codepre"><code>
	#print a string
	name="JavaTpoint"
	print(name)
	websiteName='www.BlackBook.com'
	print(websiteName)
	#string length
	print(len(websiteName))
	#locate  a character  in string
	print(websiteName.index('B'))#case sensitive
	#count the number of times character is repeated in the
	print(websiteName.count("B"))#case sensitive
	#print apart of String
	print(websiteName[5:12])
	#reverse a string
	print(websiteName[::-1])
	#convert the letters in the String to uppercase
	print(websiteName.upper())
	#convert the letters in the String to lowercase
	print(websiteName.lower())
	#Concatenation of tuple
	print(websiteName+"Eduction website")
	#print tuple multiple  times
	print("*****************************************************************")
	print(websiteName,websiteName,websiteName)
	print(name * 3)
 	</code>
 </pre>
<pre id="outputpre">
<strong>Output:</strong>
C:\python>"String in python.py"
JavaTpoint
www.BlackBook.com
17
4
2
lackBoo
moc.kooBkcalB.www
WWW.BLACKBOOK.COM
www.blackbook.com
www.BlackBook.comEduction website
*****************************************************************
www.BlackBook.com www.BlackBook.com www.BlackBook.com
JavaTpointJavaTpointJavaTpoint
</pre>
<p><strong>Set data type:</strong></p>
<p>Set is an unordered collection of unique items.Set is defined by values
 separated by comma inside braces{}</p>
 <p><strong>Syntax:</strong>
 </p>

<pre id="codepre">
	<code>
     #define the set
     a=['Ashu','Annu','Aman','arun','Annu','Annu']
     c=set(a)
     print(c)
     print(len(c))
	</code>
</pre>
<pre id="outputpre"><strong>Output:</strong>
{'Aman', 'Ashu', 'Annu', 'arun'}
4
</pre> 
 
 
 
 <p><strong>Dictionary Data Type:</strong></p>
<p>Dictionary  is an unordered collection of key-value pairs.
it is  generally  used when  we have  a huge  amount of data.</p>

<pre id="codepre"><code>
	#define dictionary data type
	a={'key':'value','key':'value'}
	#print(type(a))
	print("Values:",a['key']);
	print("Values:",a['key']);
	b={'1':'20','2':'50'}
	#print(type(b))
	print(b['1'],b['2'])
	
</code></pre>
<pre><strong>Output:</strong>
	Values: value
	Values: value
	20 50
</pre>