<h6><b>What is method?</b></h6>
<p>Method is block where we write some business logic for our application.It is called method.</p>
<p>Note:In C and C++ method is call function and in Java function call method or member function   so that function or method both are similar thinks</p>

<h6><b>2 Type of Method in java</b></h6>
 	<ul>
 		<li>Instance Method </li>
 		<li>Static Method</li>
 	</ul>
 	
<h6><b>Method Signature in Java</b></h6>
<pre id="codepre">
Method Syntax:

Modifier Return_type Method_name( )
			
				//or

Modifier Return_type Method_name(Parameter)
				
				//or
				
Modifier Return_type Method_name(Parameter) throw Exception   

</pre>
<p>if we are decleare method in method if we pass any variable that is call "Arguments or args "
 and when we call the method that time pass vairable value is call "Parameter" So,both are similer</p>
<!-----------table statr-------------->
<table class="table">
		<tr >
			<th>Property</th>
			<th>Instance Method</th>
			<th>Static Method</th>
		</tr>
		
		<tr class="success">
			<td>Where Declare</td>
			<td>inside class</td>
			<td>inside class with static keyword</td>
		</tr>
		
		<tr class="success">
			<td>Scope of method</td>
			<td>With in class</td>
			<td>with in class </td>
		</tr>
		<tr class="success">
			<td>When memory Allocated</td>
			<td>when object create</td>
			<td>when .class file loaded</td>
		</tr>
		<tr class="success">
			<td>How to access</td>
			<td>using object name </td>
			<td>direct or with class name or using object</td>
		</tr>
		<tr class="success">
			<td>Store Memory</td>
			<td>Heap area</td>
			<td>Non-Heap area</td>
		</tr>
		
</table>	
<!-- --------------------------table end ----------------------- -->
<h6><b>What is Instance method?</b></h6>
 <p>Instance method define in side class that is called Instance method.and instance method memory will be allocate when object is created.and instance method access using object.</p>
<pre  
id="codepre">
package com.corejava.method;

public class InstanceMethod {
	
	void testingMethod(){
		
		System.out.println("Instance method without args...");
		
	}
	
	void testingMethod( String name){
		
		System.out.println("Instance method with args..."+name);
		
	}
	
	void testingMethod(String name,int id) throws Exception{
	//Here simple define the Exception using throws kyeword 
		
	System.out.println("Instance method with args..."+id+" "+name);
		
	/*Here we not a write a exceptioncode.we are discuss on later for Exception topic*/
	
	}
	
	public static void main(String[] args) throws Exception {
	//Here we handly the Exception using throws keyword
		
		InstanceMethod instanceMethod=new InstanceMethod();
		instanceMethod.testingMethod();
		instanceMethod.testingMethod("BlackBook");
		instanceMethod.testingMethod("Blackbook", 2017);

	}

}
</pre>
<pre id="outputpre">
output:
Instance method without args...
Instance method with args...BlackBook
Instance method with args...2017 Blackbook
</pre>

<p>In this example we define 3 instance  Method Signature .create a object of class and using object we are call all instance method  Signature.<br>
because we are access the instance method using object.<br>
if we define throws keyword with method .So that it must be handly by try ,catch block or if where you call the method it most define<br>
throws keyword.we are discuss the all of point in Exception handlying  
</p>

<pre id="codepre">
package com.corejava.method;

public class InstanceMethod {
	
	void testingMethod(){
		
		System.out.println("Instance method without args...");
		
	}
	
	void testingMethod( String name){
		
		System.out.println("Instance method with args..."+name);
		
	}
	
	void testingMethod(String name,int id) {
		
		System.out.println("Instance method with args..."+id+" "+name);
		
/*Here we not a write a exceptioncode.we are discuss on later for Exception topic*/
	
	}
	
	public static void main(String[] args) {
		
		InstanceMethod instanceMethod=new InstanceMethod();
		instanceMethod.testingMethod();
		instanceMethod.testingMethod("BlackBook");
		instanceMethod.testingMethod("Blackbook", 2017);

	}

}
</pre>
<pre  id="outputpre">
output:
Instance method without args...
Instance method with args...BlackBook
Instance method with args...2017 Blackbook
</pre>
<p>same example without Define throws keyword Here we define 3 instance  Method Signature and create a object of class and using object we are call all instance method  Signature.<br>
because we are access the instance method using object.<br>
</p>


<h6><b>What is static method?</b></h6>
<p>static method define inside the class with static keyword that is called static method and static method memory allocate when dot class file loaded</p>
<pre id="codepre">
package com.app.method;

public class StaticMethod {
	
	static void show(){
		
		System.out.println("static method");
	}
	
	public static void main(String[] args){
		
		StaticMethod sm=new StaticMethod();
		sm.show();
		StaticMethod.show();
		show();
	}

}
</pre>
<pre  id="outputpre">
Output:
static method
static method
static method
</pre>
<p>
Here you see we are create one static method using static keyword and create one object of class 'sm'.and<br>
using 'sm' object we call static method and also call static method using class Name and static method directly<br> 
without object    
</p>


 <!-- The End  -->
 