<h1>String manipulation</h1>
<h2>what is String?</h2>
<p>String is group of characters within double quote is called String.String internally use array concept.</p>
<p><strong>Note:</strong>In java String is Class</p>
<h6>In java how many String class?</h6>
<p>there are 4 classes in java </p>
	<ul>
		  <li><b>String </b> class</li>
		  <li><b>StringBuffer </b> class</li>
		  <li><b>StringBuilder </b> class</li>
		  <li><b>StringTokenizer </b> class</li>
	</ul>
<h6>String v/s StringBuffer</h6>	
<p>
<p><b>Point 1:</b></p>
<p>String and StringBuffer both are final class in java.
it is present in <b>java.lang</b> pakage <b>final class </b>con't extends and con't create sub class</p>
<p><b>Point 2:</b></p>
<p>How Many Approach to create String object?</p>
<p>There are two approach to create  String object.</p>
<ol>
	<li>Without using new operator &nbsp; &nbsp; &nbsp; String s1="Java";</li>
	<li>With new operator&nbsp; &nbsp; &nbsp;String s2=new String("java");</li>
</ol>	


<code id="codepre" >
	package com.app.string;
	public class StringWithObject {
		public static void main(String[] args) {
	
			//without using  new  opreater cretae String object		
			String s1="java";
			//without using  new  opreater cretae String object
			String s2=new String("java");
			//using new  opreater cretae String object
			StringBuffer s3=new StringBuffer("java");
			//using new  opreater cretae String object
			StringBuilder s4=new StringBuilder("java");
					
			System.out.println("s1:"+s1);
			System.out.println("s2:"+s2);
			System.out.println("s3:"+s3);
			System.out.println("s4:"+s4);
   		}
	}
</code>

<pre id="outputpre">
Output:
s1:java
s2:java
s3:java
s4:java
</pre>

<p><b>Point 3:</b></p>
<pre>
String s1="beginner";		||		String ss1=new String("beginner");
String s2="experience";		||		String ss2=new String("experience");
String s3="experience";		||		String ss3=new String("experience");
</pre>
<p>when we create String object without using new opreater.String object create in SCP(String Constant pool) memory area</p>
<p>SCP area when we create first object.Drirect first object is create with the contance of <b>beginner</b><br>
   and reference variable point into s1. When we create second object.it is always check in SCP memory previse object cantante with <b>beginner</b>
   available or not.if not available then it create new object with cantante of <b>experience</b> and reference variable point into s2.
   and s3 reference variable point into the same object with cantante of <b>experience</b> it is all ready exit in SCP memory area so 
   that s3 and s2 point into same object. 
   </p>
<p><b>Note:</b>SCP memory area not allowed duplicate object</p>   
<p>when we create String object using new opreater.String object create in heap memory area</p>
<p>in heap always create new object.previce object available or not. that mean s1 ,s2 and s3 point into the different different object</p>  
<p><b>Note:</b>Heap memory area allowed duplicate object</p>

<p><b>Double equal ( == ) opreater</b>always use for compaire to the reference variable and it is return always boolean value   </p>
<p>when two reference variable point into the same object then always return true.and otherwise return false</p> 
<pre id="codepre">
	<code>
		package com.app.string;

			public class DoubleEqualOperator {

				public static void main(String[] args) {
		
					System.out.println("Without Using New Opreater");
					String s1="beginner";
					String s2="experience";
					String s3="experience";
					System.out.println(s1==s2);
					System.out.println(s2==s3);
					System.out.println(s3==s2);
					System.out.println("Using New Opreater");
					String ss1=new String("beginner");
					String ss2=new String("experience");
					String ss3=new String("experience");
					System.out.println(ss1==ss2);
					System.out.println(ss2==ss3);
					System.out.println(ss3==ss2);
				}

			}
	</code>
</pre>
<pre id="outputpre">
output:
Without Using New Opreater
false
true
true
Using New Opreater
false
false
false
</pre>
<p>Once we create String object the data is fixed. it is not possible to preform modification into exitsing object.
it's behaviour is called immutable natrue</p>
<p>Once we create StringBuffer object the data is not fixed. it is possible to preform modification into exitsing object.
it's behaviour is called mutable natrue</p>
<pre id="codepre">
	<code>
		package com.app.string;

		public class StringImmutable {
			public static void main(String[] args) {
		
			//immutable nature
			String s1="Hello";
			s1.concat("java");
			System.out.println(s1);
			
			//immutable nature
			String s2=new String("Hello");
			s2.concat("java");
			System.out.println(s2);
			
			//mutable nature
			StringBuffer string=new StringBuffer("Hello");
			string.append("Java");
			System.out.println(string);
	}
}
	</code>
</pre>
<pre id="outputpre">
Output:
Hello
Hello
HelloJava
</pre>
<p><b>Note:</b>concat() and append() both method preform same behaviour.concat() method exits in String class and append() method exits is StringBuffer class </p>

<p><b>Point 4:</b></p>
<p>intire java when we print the reference variable. it is internally called toString() method.toString() method class belongs to the Object class.your know the Object class 
is super class for all java classes  java.</p>
<pre>

 <b> public class java.lang.Object {</b>
  public java.lang.Object();
  public native int hashCode();
  public boolean equals(java.lang.Object);
  protected native java.lang.Object clone() throws java.lang.CloneNotSupportedException;
  public java.lang.String toString();
  public final native void notify();
  public final native void notifyAll();
  public final native void wait(long) throws java.lang.InterruptedException;
  public final void wait(long, int) throws java.lang.InterruptedException;
  public final void wait() throws java.lang.InterruptedException;
  protected void finalize() throws java.lang.Throwable;
  static {};
<b>}</b>
</pre> 
<p><b>Example:</b>when ever we print reference variable.it is calling toString() method. 
 in this example we create 3 reference variable.when we all 3 reference variable we print then it internally call toString() method.
"in java class if no class extends other class.then by default extends Object class"

here string1,object and string2 reference variable call toString() method. string1.toString(), object.toString() and string2.toString() method.  in this seneroyo jvm fristly check the toString() present in ObjectotString class.if not then
it call Object class toString() method.</p>
<pre id="codepre">
	<code>
	package com.app.string;

		public class ObjectotString {
			
			void classInfo(){
				Object object=new Object();
				ObjectotString string2=new ObjectotString();
				
				System.out.println(object);
				System.out.println(string2);
			}
			 
			public static void main(String[] args) {
				ObjectotString string1=new ObjectotString();
				System.out.println(string1);
				string1.classInfo();
			}
		}
	</code>
</pre>
<pre id="outputpre">
Output:
com.app.string.ObjectotString@1db9742
java.lang.Object@106d69c
com.app.string.ObjectotString@52e922
</pre>

<pre id="codepre">
<code>
  package com.app.string;
	/* here ToStringMethod class haven't any parent class.
	 * So by default extends Object class Implicitly
	*/
	public class ToStringMethod extends Object {
		
	 String name;
	 //overrides java.lang.Object.toString
	 public String toString()//Local Variable
	 {
		return name;
	 }
	 /*
	  *Here this keyword use for local variable 
	  *value refer to into instance variable
	  */
	 public void method(String name)//Local Variable
	 {
	 this.name=name;
	 }
	public static void main(String[] args) {
		ToStringMethod method1=new ToStringMethod();
		method1.method("Vision");
		System.out.println(method1.toString()+"  "+method1);
		}
 }
		
	</code>
</pre>
<pre id="outputpre">
Output:Vision  Vision
</pre>