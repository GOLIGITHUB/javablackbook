<h3>Employee Bean</h3>
<pre>
package com.app.jdbc;

public class Employee {
	
	private int empid;
	private String fname;
	private String lname;
	private String email;
	private String mobile;
	
	
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
		
}

</pre>
<h3>CreateStatement CRUD</h3>
<pre>
package com.app.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class CreateStatementCRUD {
	
	
	
	static void save() {
		try {
			//step-1 register the Driver Class
			Class.forName("com.mysql.jdbc.Driver");
			
			//step-2 create a connection to the mysql Server
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/corejava1", "root", "root");
			///System.out.println(connection);
			
			//step-3 create statement
			Statement statement=connection.createStatement();
			
			//step-4 execute Query;
			String query="insert into employee(fname, lname, email, mobile) values('sam', 'admin', 'admin@gmail.com', '9560822035')";
			int b=statement.executeUpdate(query);
			
			
			String message=(b>0)?"Insert into database Successfully":"Something wrong";
			System.out.println(message);
			
			//step-5 close the connection
			connection.close();
		}catch (Exception e) {
			System.out.println(e);
		}
	}
	static void delete() {
		try {
			//step-1 register the Driver Class
			Class.forName("com.mysql.jdbc.Driver");
			
			//step-2 create a connection to the mysql Server
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/corejava1", "root", "root");
			//System.out.println(connection);
			
			//step-3 create statement
			Statement statement=connection.createStatement();
			
			//step-4 execute Query;
			String query="delete from fname, lname, email, mobile  employee where id=7";
			int b=statement.executeUpdate(query);
			
			
			String message=(b>0)?"Delete into database Successfully":"Something wrong";
			System.out.println(message);
			
			//step-5 close the connection
			connection.close();
		}catch (Exception e) {
			System.out.println(e);
		}
	}
	static void view() {
		try {
			//step-1 register the Driver Class
			Class.forName("com.mysql.jdbc.Driver");
			
			//step-2 create a connection to the mysql Server
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/corejava1", "root", "root");
			//System.out.println(connection);
			
			//step-3 create statement
			Statement statement=connection.createStatement();
			
			//step-4 execute Query;
			String query="SELECT * FROM corejava1.employee;";
			ResultSet rs=statement.executeQuery(query);
				while (rs.next()) {
					
				System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"   "+rs.getString(3)+"  "+rs.getString(4)+"  "+rs.getString(5));
				
				}
			//step-5 close the connection
			connection.close();
		}catch (Exception e) {
			System.out.println(e);
		}
	}
	static void update() {
		try {
			//step-1 register the Driver Class
			Class.forName("com.mysql.jdbc.Driver");
			
			//step-2 create a connection to the mysql Server
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/corejava1", "root", "root");
			//System.out.println(connection);
			
			//step-3 create statement
			Statement statement=connection.createStatement();
			
			//step-4 execute Query;
			String query="update employee set fname='Subham',lname='Mishra',email='subham@gmail.com',mobile='9999999999' where idemployee=17";
			int b=statement.executeUpdate(query);
			
			
			String message=(b>0)?"Update into database Successfully":"Something wrong";
			System.out.println(message);
			
			//step-5 close the connection
			connection.close();
		}catch (Exception e) {
			System.out.println(e);
		}
	}
}


</pre>
<h3>JDBC Connection</h3>
<pre>
package com.app.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public interface DBINFO {
/*public static final */String driver="com.mysql.jdbc.Driver";
/*public static final */String url="jdbc:mysql://localhost:3306/corejava1";
/*public static final */String user="root";
/*public static final */String password="root";



	static Connection getDBINFOCOnnection() {
		Connection connection=null;
		try {
			Class.forName(DBINFO.driver);
			connection=DriverManager.getConnection(DBINFO.url, DBINFO.user, DBINFO.password);
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}
}

</pre>
<h3>MY APP</h3>
<pre>
package com.app.jdbc;

public class CreateTesting {
	public static void main(String[] args) {
		/*JdbcFiveStep.delete();*/
		CreateStatementCRUD.view();
		System.out.println("==============================================================");
		CreateStatementCRUD.update();
		System.out.println("==============================================================");
		CreateStatementCRUD.view();
	}
}

</pre>