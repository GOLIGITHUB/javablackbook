<p> in python 3 type of basic datatype </p>
<ul>
	<li>number</li>
	<li>string</li>
	<li>boolean</li>
</ul>
<table  class="table">
	<tr class="success">
		<td>number</td>
		<td>string</td>
		<td>boolean</td>
	</tr>
	<tr>
		<td>int,float</td>
		<td>str</td>
		<td>bool</td>
	</tr>
	<tr class="success">
		<td>12,18.9</td>
		<td>'' or  ""</td>
		<td>True, False</td>
	</tr>
</table>
<table class="table">
		<tr class="success" >
			<td>String</td>
			<td>Integer</td>
			<td>Float</td>
			<td>Float</td>
		</tr>
		<tr class="success">
			<td>%s</td>
			<td>%d</td>
			<td>%f</td>
			<td>%g</td>
		</tr>
		<tr class="success">
			<td></td>
			<td></td>
			<td>it only print 17 digit</td>
			<td>Only print 6 digit</td>
		</tr>
</table>
<pre>
def getValueFrom():
	value=input("Enter String value : ")
	print("My Name %s"%(value))
getValueFrom()	
</pre>
<pre>
Enter String value : ashutosh
My Name ashutosh
</pre>
<pre>
def getValueFrom():
	value=int(input("Enter Integer value : "))
	print("My Age %d"%(value))
getValueFrom()
</pre>
<pre>
Enter Integer value : 29
My Age 29
</pre>
<pre>
def getValueFrom():
	value=float(input("Enter Decimal value : "))
	print("My Salary %g"%(value))
getValueFrom()
</pre>
<pre>
def getValueFrom():
	value=float(input("Enter Decimal value : "))
	print(" %g"%(value))
getValueFrom()		
</pre>
<pre>
Enter Decimal value : 654.321
 654.321
</pre>
<pre>
def getValueFrom():
	value=12345678979.8912965789
	print("%f"%(value))
getValueFrom()
</pre>
<pre>
12345678979.891296
</pre>