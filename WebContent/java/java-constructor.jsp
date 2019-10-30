<h6><b>What is  Constructors in Java ?</b></h6>
<p>Constructor is same as class name and "Constructor is used to initialization instance variable During object creation "</p>

<h6><b>Constructors Rules to Declare Constructors in Java </b></h6>

<ul>
	<li>Constructors name & class-name must be same</li>
	<li>Constructors able to take Parameter</li>
	<li>Constructors not allowed return type</li>
</ul>
 


<h6><b>Constructors Syntax</b></h6>
<pre>
	Class_name reference variable=new class_name();
	Test t=new Test();
	Note:Recommended way to declare constructor or Object in java
	Test ----> Class Name
	T    ----> Reference Variable
	new  ----> Keyword(used to create the object)
	Test()----> constructor
	Constructor will be  executed when object is created
</pre>

<h6><b>Type of Constructors in a Java</b></h6>

	<p> There are two type of constructor in a java 
		<ul type="number">
		<li>Default Constructors in Java</li>
		<li>Parameterized constructor in java</li>
	</ul>
	


<blockquote>
<p>Note:Inside the class if you are not Declare  at least one constructor the only default Constructor will be generate. if you are Declare at least one Constructor the Compiler is not responsible to generate the default constructor.</p>
</blockquote>



<h6><b>Advantage of Constructor in java</b></h6>
	<ul >
		<li>Constructor is used to write a logics during object Creation.</li>
		<li>Constructor is used to initialized instance variable during object creation.</li>
	</ul>


<!-- --------------------------------------------------------------------------------->	 
<h6><b>Default Constructors</b></h6>
<pre id="codepre">package com.corejava.cons;

class Test {
	
	/*Default constructor created by the complier
	 * public Test() {empty implemantion}
	 */
	public Test() {
		System.out.println("Default Constructor!");
	}
	
	void getTest(){//instance method
		System.out.println("getTest");
	}
	
	public static void main(String[] args) {
		
		Test test=new  Test();
		test.getTest();
		
		/*Test T=new Test();
		 * Test---->Class Name
		 * T----->reference variable
		 * new --->keyword(used to create a object)
		 * Test()--->constructor
		 * getTest()-->Instance Method
		 */
		
	}
}
</pre>
<pre id="outputpre">
Output:
Default Constructor!
getTest
</pre>
<pre id="codepre">
package com.corejava.cons;

class Test {
	
	/*Default constructor created by the complier
	 * public Test() {empty implemantion}
	 */
	
	public Test() {
		System.out.println("Default Constructor!");
	}
	
	public static void main(String[] args) {
		
		Test test=new  Test();/With object
		 new Test();//Nameless Object
		
	}
}
</pre>
<pre  id="outputpre">
Output:
Default Constructor!
Default Constructor!
</pre>
<h6><b>Parameterized Constructor</b></h6>
	<pre id="codepre">
	class parameterized_constructor{	
	
	parameterized_constructor(int a,String b){
		// in this scenario int a int b is local variable 
		//and it will be work with in constructor
		System.out.println("Parameterized Constructor A:"+a+"\n"+"Parameterized Constructor B:"+b);
	}
	
}

class cons{
	public static void main(String[] args){
	 new parameterized_constructor(10,"cons");//Nameless Object with parameterized constructor
	}
}
	
	</pre>
	
	<pre id="outputpre">
	out put:
	Parameterized Constructor A:10
	Parameterized Constructor B:cons
	</pre>
	
<!------------------------------------------------------------------------------------>	
	
	<pre id="codepre">
	class parameterized_constructor{
	
	int a;
	String b;
	
	void getMethod(){
		System.out.println("A:"+a+"        "+"B:"+b);
	}
	
	parameterized_constructor(int a,String b){
		// in this scenario int a int b is local variable 
		//and it will be work with in constructor
		System.out.println("Parameterized Constructor A:"+a+"\n"+"Parameterized Constructor B:"+b);
	}
	
}

class cons{
	public static void main(String[] args){
	 new parameterized_constructor(10,"cons").getMethod();//Nameless Object with parameterized constructor
	}
}
	</pre>
	
	<pre id="outputpre">
	out put:
	Parameterized Constructor A:10
	Parameterized Constructor B:cons
	A:0        B:null
	</pre>
<!----------------------------------------------------------------------------------------------->

	<pre id="codepre">
	class parameterized_constructor{
	
	int aa;
	String bb;
	
	void getMethod(){
		System.out.println("A:"+aa+"        "+"B:"+bb);
	}
	
	parameterized_constructor(int a,String b){
		//Memory westage  
		aa=a;
		bb=b;
		
	}
	
}

class cons{
	public static void main(String[] args){
	 new parameterized_constructor(10,"Cons").getMethod();//Nameless Object with parameterized constructor
	 new parameterized_constructor(20,"John").getMethod();
	 new parameterized_constructor(30,"Harry").getMethod();
	}
}
</pre>

<pre id="outputpre">
out put:
A:10        B:Cons
A:20        B:John
A:30        B:Harry

</pre>
<!-------------------------------------------------------------------------------------------------->

<pre id="codepre">
class parameterized_constructor{
	
	int a;
	String b;
	
	void getMethod(){
		System.out.println("A:"+a+"        "+"B:"+b);
	}
	
	parameterized_constructor(int a,String b){
		this.a=a;//conversion of local values to instance values
		this.b=b;//conversion of local values to instance values
		
		System.
		out.println("Parameterized Constructor A:"+a+"\n"+"Parameterized Constructor B:"+b);
	}
	
}

class cons{
	public static void main(String[] args){
	 new parameterized_constructor(10,"cons").getMethod();//Nameless Object with parameterized constructor
	}
}

</pre>


<pre id="outputpre">
Parameterized Constructor A:10
Parameterized Constructor B:cons
A:10        B:cons
</pre>

<!-------------------------------------------------------------------------------------------------------------->
