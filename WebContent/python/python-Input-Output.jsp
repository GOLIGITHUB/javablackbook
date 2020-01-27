<h1>In Python 2.7 Version</h1>
<p><strong>in python 2.7 Version input() function take any type of data</strong></p>
<pre>
num1=input("Enter the First Number: ")
num2=input("Enter the Second Number: ")
print type(num1)," : ",type(num2)
print num1+num2
</pre>
<pre>
Enter the First Number: 100
Enter the Second Number: "Ashu"
&#60;type 'int'&#62  :  &#60;type 'str'&#62
Traceback (most recent call last):
  File "main.py", line 4, in &#60;module&#62
    print num1+num2
TypeError: unsupported operand type(s) for +: 'int' and 'str'
</pre>
<p><strong>in python 2.7 Version raw_input() function take only String format</strong></p>
<pre>
num1=raw_input("Enter the First Number: ")
num2=raw_input("Enter the Second Number: ")
print type(num1)," : ",type(num2)
print num1+num2
</pre>
<pre>
Enter the First Number: 100
Enter the Second Number: 300
&#60;type 'str'&#62; :  &#60;type 'str'&#62;
100300
</pre>
<p><strong>if you want preform to add operation using raw_input() function then use type casting  in python</strong></p>
<pre>
num1=int(raw_input("Enter the First Number: "))
num2=int(raw_input("Enter the Second Number: "))
print type(num1)," : ",type(num2)
print num1+num2
</pre>
<pre>
Enter the First Number: 100
Enter the Second Number: 300
&#60;type 'int'&#62; :  &#60;type 'int'&#62;
400
</pre>
<p><strong>in python 3.?.? version input() function act as raw_input() function that means python3.?.? on word  input() function take only in  string format</strong></p>
<pre>
num1=int(input("Enter the First Number: "))
num2=int(input("Enter the Second Number: "))
print(type(num1)," : ",type(num2))
print(num1+num2)
</pre>
<pre>
Enter the First Number: 100
Enter the Second Number: 300
&#60;class 'int'&#62; : &#60;class 'int'&#62;
400
</pre>
