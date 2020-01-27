<h1>In python 3 types of statement</h1>
<ol tabindex="number">
	<li>Control Statement</li>
	<li>Iteration Statement</li>
	<li>Jump Statement</li>
</ol>
<table class="table">
	<tr class="success">
	<td>Control Statement</td>
	<td>Iteration Statement</td>
	<td>Jump Statement</td>
	</tr>
	<tr>
	<td>if,if-esle,elif</td>
	<td>for,while</td>
	<td>break,continue</td>
	</tr>
</table>
<p><strong>CASE 1:</strong></p>
<pre>
def control_Statement_1(num):
	if num>0:
		print("Only True Statement")
	else:
		print("Only False Statement")
num=int(input("Enter The Number: "))
control_Statement_1(num)
</pre>
<pre>
Enter The Number: 0
Only False Statement
</pre>
<p><strong>CASE 2:</strong></p>
<pre>
def control_Statement_2():
	if True:
		print("Only True Statement")
	else:
		print("Only False Statement")
control_Statement_2()
</pre>
<pre>
Only True Statement
</pre>
<p><strong>CASE 3:</strong></p>
<pre>
def control_Statement_3():
	if 0:
		print("Only True Statement")
	else:
		print("Only False Statement")
control_Statement_3()
</pre>
<pre>
Only False Statement
</pre>
<p><strong>CASE 4:</strong></p>
<pre>
def control_Statement_4():
	print("Only True Statement") if 1 else print("Only False Statement")
control_Statement_4()
</pre>
<pre>
Only True Statement
</pre>
<p><strong>CASE 5:</strong></p>
<pre>
def control_Statement_5():
	print("Normal Statement"),print("Only True Statement") if 1 else print("Only False Statement"),print("Normal Statement")
control_Statement_5()
</pre>
<pre>
Normal Statement
Only True Statement
Normal Statement
</pre>
<p><strong>CASE 6:</strong></p>
<pre>
def control_Statement_6():
	{print("Normal Statement"),print("Only True Statement")} if 1 else {print("Only False Statement"),print("Normal Statement")}
control_Statement_6()
</pre>
<pre>
Normal Statement
Only True Statement
</pre>
<p><strong>CASE 7:</strong></p>
<pre>
def control_Statement_7(num):
	if(num==100):
		print("A")
	elif(num==60):
		print("B")
	elif(num==40):
		print("C")
	else:
		print("else block in optional")
num=int(input("Enter The number:"))					
control_Statement_7(num)
</pre>
<pre>
Enter The number:26
else block in optional
</pre>
<h2>Iteration Statement</h2>
<table class="table">
	<tr class="success">
		<td>range(10)</td>
		<td>range(1,10)</td>
		<td>range(1,10,2)</td>
		<td>range(10,1,-2)</td>
		<td>range(-10,-1)</td>
		<td>range(-10,-1,-2)</td>
		<td>range(-1,-10,-2)</td>
	</tr>
</table>
<h3>for loop systax</h3>
<pre>
for temp-var in iteration-data:
	print(temp-var)
</pre>
<p><strong>CASE 1:</strong></p>
<pre>
def iteration_Statement_1(num=10):
		for i in range(num):
			print(i)
iteration_Statement_1()
</pre>
<pre>
0
1
2
3
4
5
6
7
8
9
</pre>
<p><strong>CASE 2:</strong></p>
<pre>
def iteration_Statement_2(begin=1,ending=10):
		for i in range(begin,ending):
			print(i)
iteration_Statement_2()

</pre>
<pre>
1
2
3
4
5
6
7
8
9
</pre>
<p><strong>CASE 3:</strong></p>
<pre>
def iteration_Statement_3(begin=1,ending=10,increment=2):
		for i in range(begin,ending,increment):
			print(i)
iteration_Statement_3()
</pre>
<pre>
1
3
5
7
9
</pre>
<p><strong>CASE 4:</strong></p>
<pre>
def iteration_Statement_4(begin=10,ending=1,increment=-2):
		for i in range(begin,ending,increment):
			print(i)
iteration_Statement_4()
</pre>
<pre>
10
8
6
4
2
</pre>
<p><strong>CASE 5:</strong></p>
<pre>
def iteration_Statement_5(begin=-10,ending=-1):
		for i in range(begin,ending):
			print(i)
iteration_Statement_5()
</pre>
<pre>
-10
-9
-8
-7
-6
-5
-4
-3
-2
</pre>
<p><strong>CASE 6:</strong></p>
<pre>
def iteration_Statement_6(begin=-10,ending=-1,increment=-2):
		for i in range(begin,ending,increment):
			print(i)
iteration_Statement_6()
</pre>
<pre>
NOTE: No Output
</pre>
<p><strong>CASE 7:</strong></p>
<pre>
def iteration_Statement_7(begin=-1,ending=-10,increment=-2):
		for i in range(begin,ending,increment):
			print(i)
iteration_Statement_7()
</pre>
<pre>
-1
-3
-5
-7
-9
</pre>
<p><strong>CASE 8:</strong> for loop with else block</p>
<p><strong>NOTE 1:</strong> if the for loop execute normal then else block executed</p>
<p><strong>NOTE 2:</strong> if we use break statement in for loop then else block not executed</p>
<p><strong>NOTE 3:</strong> if in for loop exception raised the else block not executed</p>
<p><strong>NOTE 4:</strong> if we use os or subprocess module function _exit(0) then else block not executed</p>
<pre>
def iteration_Statement_8(begin=-10,ending=-1):
		for i in range(begin,ending):
			#break
			print(i)
		else:
			print("execute normal")	
iteration_Statement_8()
</pre>
<pre>
-10
-9
-8
-7
-6
-5
-4
-3
-2
execute normal
</pre>
<p><strong>CASE 9:</strong> for loop with else block and break statement</p>
<pre>
def iteration_Statement_9(begin=-10,ending=-1):
		for i in range(begin,ending):
			print(i)
			break
		else:
			print("execute normal")	
iteration_Statement_9()
</pre>
<pre>
-10
</pre>
<p><strong>CASE 10:</strong> if in for loop exception raised the else block not executed</p>
<pre>
def iteration_Statement_10(begin=-10,ending=-1):
		for i in range(begin,ending):
			print(i)
			print(10/0)
		else:
			print("execute normal")	
iteration_Statement_10()
</pre>
<pre>
-10
Traceback (most recent call last):
  File "Key.py", line 7, in &lt;module&gt;
    iteration_Statement_10()
  File "Key.py", line 4, in iteration_Statement_10
    print(10/0)
ZeroDivisionError: division by zero
</pre>
<p><strong>CASE 11:</strong> if we use os or subprocess module function _exit(0) then else block not executed</p>
<pre>
import os
def iteration_Statement_11(begin=-10,ending=-1):
		for i in range(begin,ending):
			print(i)
			os._exit(0)
		else:
			print("execute normal")	
iteration_Statement_11()
</pre>
<pre>
-10
</pre>
<h3>while loop systax</h3>
<pre>
for temp-var in iteration-data:
	print(temp-var)
</pre>