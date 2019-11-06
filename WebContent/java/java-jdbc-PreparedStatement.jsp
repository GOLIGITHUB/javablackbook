<h3>Employee Bean Class</h3>
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
<h3>PreparedStatementCRUD</h3>
<pre>
package com.app.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class PreparedStatementCRUD {
	
	
	static int save(Employee employee) {
		int status=0;
		try {
			Connection connection=DBINFO.getDBINFOCOnnection();
			String query="insert into employee(fname,lname,email,mobile) values(?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(query);
			preparedStatement.setString(1, employee.getFname());
			preparedStatement.setString(2, employee.getLname());
			preparedStatement.setString(3, employee.getEmail());
			preparedStatement.setString(4, employee.getMobile());
			status=preparedStatement.executeUpdate();
			connection.close();
			}catch (Exception e) {
				System.out.println(e);
			}
	return status;	
	}

	
	static void view() {
		try {
			Connection connection=DBINFO.getDBINFOCOnnection();
			String query="select * from employee";
			PreparedStatement preparedStatement=connection.prepareStatement(query);
			ResultSet resultSet=preparedStatement.executeQuery();
			ResultSetMetaData data=resultSet.getMetaData();
			System.out.println(data.getColumnName(1)+"  "+data.getColumnName(2)+"  "+data.getColumnName(3)+"  "+data.getColumnName(4)+"  "+data.getColumnName(5));
			System.out.println(data.getColumnDisplaySize(1)+"  "+data.getColumnDisplaySize(2)+"  "+data.getColumnDisplaySize(3)+"  "+data.getColumnDisplaySize(4)+"  "+data.getColumnDisplaySize(5));
			System.out.println(data.getColumnClassName(2));
			System.out.println("================================================================================================================================");
			while(resultSet.next()) {
				System.out.println(resultSet.getInt(1)+"  "+resultSet.getString(2)+"  "+resultSet.getString(3)+"  "+resultSet.getString(4)+"  "+resultSet.getString(5));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
	static int delete(Employee employee) {
		int status=0;
		try {
			Connection connection=DBINFO.getDBINFOCOnnection();
			String query="delete from  employee where fname=? AND lname=? ";
			PreparedStatement preparedStatement=connection.prepareStatement(query);
			preparedStatement.setString(1, employee.getFname());
			preparedStatement.setString(2, employee.getLname());
			status=preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	return status;	
	}

	static int update(Employee employee) {
		int status=0;
		try {
			Connection connection=DBINFO.getDBINFOCOnnection();
			String query="update employee set fname=?,lname=?,email=?,mobile=? where idemployee=?";
			PreparedStatement preparedStatement=connection.prepareStatement(query);
			preparedStatement.setString(1, employee.getFname());
			preparedStatement.setString(2, employee.getLname());
			preparedStatement.setString(3, employee.getEmail());
			preparedStatement.setString(4, employee.getMobile());
			preparedStatement.setInt(5, employee.getEmpid());
			status=preparedStatement.executeUpdate();
			connection.close();
			}catch (Exception e) {
				System.out.println(e);
			}
	return status;	
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

public class Testing {
public static void main(String[] args) {
	/*Employee employee=new Employee();
	employee.setFname("Jaypal");
	employee.setLname("Singh");
	employee.setEmail("Jaypalsingh@gmail.com");
	employee.setMobile("956234534");
	int i=PreparedStatementCRUD.save(employee);
	String message=(i>0)?"SAVE":"ERROR";
	System.out.println(message);*/	
	
	//PreparedStatementCRUD.view();
	
	/*Employee employee=new Employee();
	employee.setFname("admin");
	employee.setLname("admin");
	int i=PreparedStatementCRUD.delete(employee);
	String message=(i>0)?"DETELE":"ERROR";
	System.out.println(message);*/
	
	/*PreparedStatementCRUD.view();
	
	Employee employee=new Employee();
	employee.setFname("Arun");
	employee.setLname("Singh");
	employee.setEmail("arun1234@gmail.com");
	employee.setMobile("999999999");
	employee.setEmpid(7);
	int i=PreparedStatementCRUD.update(employee);
	String message=(i>0)?"UPDATE":"ERROR";
	System.out.println(message);*/
	
	PreparedStatementCRUD.view();
	
	
	
	
}
}

</pre>