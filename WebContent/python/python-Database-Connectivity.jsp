<p>python --version</p>
<p>python -m pip install --upgrade pip</p>
<p>pip install mysql-connector-python</p>
<strong>or</strong>
<p>pip install mysql-connector-python==8.0.17</p>
<p>pip uninstall mysql-connector-python</p>

<p>this source file save as <strong>companydb.py</strong> that is call modules name</p>
<pre>
class Company:
	def __init__(self,comName,comLocaltion):
		self.comName=comName
		self.comLocaltion=comLocaltion
</pre>
<p>this source file save as <strong>employeedb.py</strong> that is call modules name</p>
<pre>
import companydb 
import mysql.connector
class Employee:
	def __init__(self,fname,lname,email,mobile,companyObject):
		self.fname=fname
		self.lname=lname
		self.email=email
		self.mobile=mobile
		self.companyObject=companyObject
	def employeeSave(self):
		con = mysql.connector.connect(
				user='root',
				password='xyz!@#$%ABC9015',
				host='127.0.0.1',
				database='resiaoon_resiaoon_jbb')
		empcursor=con.cursor()
		sql="insert into employee(fname,lname,email,mobile,comName,comLocaltion)
			 values(%s,%s,%s,%s,%s,%s)"
		val=(self.fname,self.lname,self.email,self.mobile,
		self.companyObject.comName,self.companyObject.comLocaltion)
		empcursor.execute(sql,val)
		con.commit()
		print(empcursor.rowcount, "record inserted.")
c1=companydb.Company("JBB","Nodia")
e1=Employee("ashu","mishra","ashu@gmail.com","95608282035",c1)
e1.employeeSave()
</pre>
<pre>
import companydb 
import mysql.connector
class Employee:
	
	def employeeSave(self):
		con = mysql.connector.connect(
				user='root',
				password='admin',
				host='127.0.0.1',
				database='xyz')
		empcursor=con.cursor()
		empcursor.execute("select * from employee")
		rs=empcursor.fetchall();
		for x in rs:
			print(x)
e1=Employee()
e1.employeeSave()
</pre>