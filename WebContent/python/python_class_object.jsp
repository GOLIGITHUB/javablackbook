<h2>Class in Python:</h2>
<p>A class is the blueprint from which specific objects are created.</p>
<h2>Object in Python:</h2>
<p>Anything that has a state and behavior is object.</p>
<pre id="codepre">
	<code>
class Employee(object):
	def __init__(itself,name,salary,age):
		itself.name=name;
		itself.salary=salary;
		itself.age=age;
emp=Employee("Ashutosh",100000,27)#object		
print(emp.name);
print(emp.salary);
print(emp.age);
	</code>
</pre>
<pre  id="outputpre">
<strong>Output:</strong>	
E:\J-PYTHON-CMD>"class and object.py"
Ashutosh
100000
27
</pre>
<pre id="codepre">
	<code>
class Employee(object):
	name="Ashu";
	salary="10000";
	age="27";
emp=Employee()		
print(emp.name);
print(emp.salary);
print(emp.age);
	</code>
</pre>
<pre  id="outputpre">
<strong>Output:</strong>
E:\J-PYTHON-CMD>EmployeeProblom.py
Ashu
10000
27	
</pre>
<ul>
	<li>class
		<ul>
			<li>
				Class Variable	
			</li>
			<li>
				Insatnce Variable	
			</li>
			<li>
				Method
			</li>
		</ul>
	</li>
</ul>
<h2>Class Variable</h2>
<p>A variable that is shared by all instances of a class</p>
<h2>Instance Variable</h2>
<p>instance variable unique to each instance.</p>
<h2>Method</h2>
<p>The function that we define inside a class.</p>
<pre id="codepre">
	<code>
class Student:
	pass
std1=Student()#object
std2=Student()#object

std1.roll=1002
std1.name="Ashu"
std1.school="TVE"
print(std1.roll,"  ",std1.name,"  ",std1.school)
std2.roll=1001
std2.name="Ashutosh"
std2.school="TVE school"
print(std2.roll,"  ",std2.name,"  ",std2.school)
	</code>
</pre>
<pre  id="outputpre">
<strong>Output:</strong>	
E:\J-PYTHON-CMD>class.py
1002    Ashu    TVE
1001    Ashutosh    TVE school
</pre>
<pre id="codepre">
	<code>
class Employee:
def __init__(myself,empid,empname,empsalary,empage):
		myself.empid=empid
		myself.empname=empname
		myself.empsalary=empsalary
		myself.empage=empage
		print(empid,"  ",empname,"   ",empsalary,"   ",empage)

emp1=Employee(1002,"Ashutosh Mishra","1000000",27)
emp2=Employee(1003,"Arun Singh","1100000",26)
print("------------------------------------------------------")
print(emp1.empid,"  ",emp1.empname,"   ",emp1.empsalary,"   ",emp1.empage)
print(emp2.empid,"  ",emp2.empname,"   ",emp2.empsalary,"   ",emp2.empage)
	</code>
</pre>
<pre  id="outputpre">
<strong>Output:</strong>	
E:\J-PYTHON-CMD>"class method self.py"
1002    Ashutosh Mishra     1000000     27
1003    Arun Singh     1100000     26
---------------------------------------------------
1002    Ashutosh Mishra     1000000     27
1003    Arun Singh     1100000     26
</pre>
<pre id="codepre">
	<code>
class Employee:
def __init__(myself,empid,empfname,emplname,empsalary,empage):
		myself.empid=empid
		myself.empfname=empfname
		myself.emplname=emplname
		myself.empsalary=empsalary
		myself.empage=empage
		print(empid,"  ",empfname,"  ",emplname,"   ",empsalary,"   ",empage)

def fullname(myself):
		return '{}{}'.format(myself.empfname,myself.emplname) 	

emp1=Employee(1002,"Ashutosh" ,"Mishra","1000000",27)
emp2=Employee(1003,"Arun", "Singh","1100000",26)
print("------------------------------------------------------")
print(emp1.empid,"  ",emp1.empfname,"  ",emp1.emplname,"   ",emp1.empsalary,"   ",emp1.empage)
print(emp2.empid,"  ",emp2.empfname,"   ",emp1.emplname,"  ", emp2.empsalary,"   ",emp2.empage)
print("------------------------------------------------------")
#print('{}{}'.format(emp1.empname,emp2.empname))concatinition
print(emp1.fullname())
print(emp2.fullname())
	</code>
</pre>
<pre id="outputpre">
E:\J-PYTHON-CMD>"class method self.py"
1002    Ashutosh    Mishra     1000000     27
1003    Arun    Singh     1100000     26
------------------------------------------------------
1002    Ashutosh    Mishra     1000000     27
1003    Arun     Mishra    1100000     26
------------------------------------------------------
AshutoshMishra
ArunSingh
E:\J-PYTHON-CMD>
</pre>
<pre  
id="codepre">
	<code>
class Employee:
	def __init__(myself,empid,empfname,emplname,empsalary,empage):
		myself.empid=empid
		myself.empfname=empfname
		myself.emplname=emplname
		myself.empsalary=empsalary
		myself.empage=empage
		print(empid,"  ",empfname,"  ",emplname,"   ",empsalary,"   ",empage)

	def fullname(myself):
			return '{}{}'.format(myself.empfname,myself.emplname)
	def addSalary(myself):
		myself.add=(myself.empsalary+200000)	 		

emp1=Employee(1002,"Ashutosh" ,"Mishra",1000000,27)
emp2=Employee(1003,"Arun", "Singh",1100000,26)
print("------------------------------------------------------")
print(emp1.empid,"  ",emp1.empfname,"  ",emp1.emplname,"   ",emp1.empsalary,"   ",emp1.empage)
print(emp2.empid,"  ",emp2.empfname,"   ",emp1.emplname,"  ", emp2.empsalary,"   ",emp2.empage)
print("------------------------------------------------------")
#print('{}{}'.format(emp1.empname,emp2.empname))concatinition
print(emp1.fullname())
print(emp2.fullname())
print("------------------------------------------------------")
emp1.addSalary()
print(emp1.add)		
	</code>
</pre>
<pre id="outputpre">
E:\J-PYTHON-CMD>"class method self.py"
1002    Ashutosh    Mishra     1000000     27
1003    Arun    Singh     1100000     26
------------------------------------------------------
1002    Ashutosh    Mishra     1000000     27
1003    Arun     Mishra    1100000     26
------------------------------------------------------
AshutoshMishra
ArunSingh
------------------------------------------------------
1200000
E:\J-PYTHON-CMD>
</pre>