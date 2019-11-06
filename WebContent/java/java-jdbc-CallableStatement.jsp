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
<h3>CallableStatement CRUD</h3>
<pre>
package com.app.jdbc;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
public class CallableStatementCRUD {
	
	
	
	public static void view() {
		try {
			Connection connection=FactoryMethodConnection.getDBINFOCOnnectionFactoryMethod();
			String query="{call corejava1.display()}";
			CallableStatement callableStatement=connection.prepareCall(query);
			ResultSet resultSet=callableStatement.executeQuery();
			ResultSetMetaData data=resultSet.getMetaData();
			System.out.println(data.getColumnName(1)+"  "+data.getColumnName(2));
			System.out.println(data.getColumnDisplaySize(1)+"  "+data.getColumnDisplaySize(2));
			System.out.println(data.getColumnClassName(2));
			System.out.println("================================================================================================================================");
			while(resultSet.next()) {
				System.out.println(resultSet.getString(1)+"  "+resultSet.getString(2));
			}
			callableStatement.close();
		  } catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public static void viewForAll() {
		try {
			Connection connection=FactoryMethodConnection.getDBINFOCOnnectionFactoryMethod();
			String query="{call corejava1.alldisplay()}";
			CallableStatement callableStatement=connection.prepareCall(query);
			ResultSet resultSet=callableStatement.executeQuery();
			ResultSetMetaData data=resultSet.getMetaData();
			System.out.println(data.getColumnName(1)+"  "+data.getColumnName(2)+"  "+data.getColumnName(3)+"  "+data.getColumnName(4)+"  "+data.getColumnName(5));
			System.out.println(data.getColumnDisplaySize(1)+"  "+data.getColumnDisplaySize(2)+"  "+data.getColumnDisplaySize(3)+"  "+data.getColumnDisplaySize(4)+"  "+data.getColumnDisplaySize(5));
			System.out.println(data.getColumnClassName(2));
			System.out.println("================================================================================================================================");
			while(resultSet.next()) {
				System.out.println(resultSet.getInt(1)+"  "+resultSet.getString(2)+"  "+resultSet.getString(3)+"  "+resultSet.getString(4)+"  "+resultSet.getString(5));
			}
			callableStatement.close();	
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public static boolean save(Employee employee) {
		int status=0;
		boolean bool=false;
		try {
			Connection connection=FactoryMethodConnection.getDBINFOCOnnectionFactoryMethod();
			String query="{call corejava1.save(?,?,?,?)}";
			CallableStatement callableStatement=connection.prepareCall(query);
			callableStatement.setString(1, employee.getFname());
			callableStatement.setString(2, employee.getLname());
			callableStatement.setString(3, employee.getEmail());
			callableStatement.setString(4, employee.getMobile());
			status=callableStatement.executeUpdate();
			bool=(status>0)?true:false;
		} catch (Exception e) {
			System.out.println(e);
		}
	return bool;	
	}
	
	public static boolean deleteAll(Employee employee) {
		int status=0;
		boolean bool=false;
		try {
			Connection connection=FactoryMethodConnection.getDBINFOCOnnectionFactoryMethod();
			String query="{call corejava1.deleteAll(?)}";
			CallableStatement callableStatement=connection.prepareCall(query);
			callableStatement.setInt(1, employee.getEmpid());
			status=callableStatement.executeUpdate();
			bool=(status>0)?true:false;
		} catch (Exception e) {
			System.out.println(e);
		}
	return bool;	
	}
	
	public static boolean updateAll(Employee employee) {
		int status=0;
		boolean bool=false;
		try {
			Connection connection=FactoryMethodConnection.getDBINFOCOnnectionFactoryMethod();
			String query="{call corejava1.updateAll(?,?,?,?,?)}";
			CallableStatement callableStatement=connection.prepareCall(query);
			callableStatement.setString(1, employee.getFname());
			callableStatement.setString(2, employee.getLname());
			callableStatement.setString(3, employee.getEmail());
			callableStatement.setString(4, employee.getMobile());
			callableStatement.setInt(5, employee.getEmpid());
			status=callableStatement.executeUpdate();
			bool=(status>0)?true:false;
		} catch (Exception e) {
			System.out.println(e);
		}
	return bool;	
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
public class CallAbleTesting {
public static void main(String[] args) {
	/*CallableStatementCRUD.view();
	Employee employee=new Employee();
	employee.setFname("Ramesh");
	employee.setLname("Sir");
	employee.setEmail("rameshsir@gmail.com");
	employee.setMobile("9560882330");
	boolean b=CallableStatementCRUD.save(employee);
	String message=(b)?"SAVE":"ERROR";
	System.out.println(message);*/
	
	/*CallableStatementCRUD.viewForAll();
	Employee employee=new Employee();
	employee.setEmpid(16);
	Boolean boolean1=CallableStatementCRUD.deleteAll(employee);
	System.out.println((boolean1)?"DELETE":"ERROR");*/
	
	CallableStatementCRUD.viewForAll();
	Employee employee=new Employee();
	employee.setFname("Vikash");
	employee.setLname("Kumar");
	employee.setEmail("vikashkumar@gmail.com");
	employee.setMobile("956238956");
	employee.setEmpid(7);
	boolean b=CallableStatementCRUD.updateAll(employee);
	System.out.println((b)?"UPDATE":"ERROR");
	CallableStatementCRUD.viewForAll();
}
}

</pre>