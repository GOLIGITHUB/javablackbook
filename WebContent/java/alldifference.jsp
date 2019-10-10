<h1>Difference between StringBuffer and StringBuilder</h1>
<p>StringBuilder is exactly same as StringBuffer (including methods and Constructors) except the following differences.</p>
	<table class="table">
	<tr>
		<th>StringBuffer</th>
		<th>StringBuilder</th>
	</tr>	
	<tr>
		<td>Every method present in StringBuffer is synchronized.</td>
		<td>Every method present in StringBuilder is asynchronized </td>
	</tr>
	<tr>
		<td>only one thread is allow to operate on StringBuffer object. hence StringBuffer Object is Thread safe</td>
		<td>Multiple threads are allow to operate on StringBuilder object.hence StringBuffer Object is not Thread safe</td>
	</tr>
	<tr>
		<td>It Increases  waiting time of thread and hence relatively performance is low.</td>
		<td>Thread are not required  to wait  to operate on StringBuilder object  and hence relatively performance is high.  </td>
	</tr>			
	</table> 
<h1>Difference between String and StringBuffer </h1>
<table class="table">
	<tr>
		<th>String</th>
		<th>StringBuffer</th>
	</tr>
	<tr>
		<td>
		Once we create a String object we can't perform any changes in the existing
		object.if we are trying to perform any changes with those changes a new 
		object will be created.this non-changeable nature is nothing but immutability
		of the String object  
		</td>
		<td>
		Once we create a StringBuffer object we can perform any type of changes in the 
		existing object.this changeble is noting but immutability of the StringBuffer
		object.
		</td>
	</tr>		
	<tr>
		<td>
		<pre>
String s1=new String("Java")
s1.concat(".BlackBook.com")
System.out.println(s1);
=======================
s1--->java
<!-- java.BlackBook.com( After concatenate s1 not store in any referance variable) -->
output:
Java
		</pre>
		</td>
		<td>
		<pre>
StringBuffer s1=new StringBuffer("Java")
s1.append(".BlackBook.com")
System.out.println(s1);
=======================
s1--->Java.BlackBook.com
<!-- (Here After concatenate s1 not store in any referance variable) -->
output:
Java.BlackBook.com
		</pre>
		</td>
	</tr>
</table>		
