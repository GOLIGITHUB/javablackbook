<h6><b>Explain the  main method</b></h6>
<p>Whether class contains main() method or not and whether main() method is declared according  to requirement or<br>
not these things  won't e checked by  compiler.At runtime, JVM is responsible  to check these  things. 
<p> At runtime  if JVM  is unable  to find  required main method  then we will get  runtime exception.</p>
<pre id="codepre">
class Test{


}
</pre>
<pre  id="outputpre">
E:\JAVA-CMD>javac Test.java
E:\JAVA-CMD>java Test
Error: Main method not found in class Test, please define the main method as:
public static void main(String[] args)
or a JavaFX application class must extend javafx.application.Application
</pre>
<pre>public static void main(String[] args)</pre>
<h6><b>public:</b></h6><p>To call  by JVM  from anywhere</p>
<h6><b>static:</b></h6><p>without existing object  also JVM has to call this method & main method no way related to any object.</p>
<h6><b>void:</b></h6><p>main() method won't return anything to JVM.</p>
<h6><b>main:</b></h6><p>this is  name which is configured inside JVM.</p>
<h6><b>(String[] args):</b></h6><p>Command line arguments.</p>
<h6>About the main method Syntax::</h6>
<ul>
	<li>The order of modifiers is not important that is instead of "public static " we can  take "static public " also.</li>
	<li>We can  declare "String[]" in any  acceptable from.</li>
	<pre>
	main(String args[])
	main(String[] args)
	main(String []args)
	</pre>
	<li>instead of 'args' we can take any valid  java identifier.</li>
	<li>we can replace String[] with var agr parameter</li>
	<pre>
	main(String[] args[])->main(String... args)
	</pre>
</ul>
<h6>Here some main method case:</h6>
<b>Case 1:</b><br>
<ul>
	<li>Overloading  of the main method is possible but JVM  will always call String[] argument in main method only.</li>
	<li>the other overloaded method we have  to call explicitly then it will be executed just a normal method call.</li>
</ul>
<pre id="codepre">
class Test{
			public static void main(float[] args)
			{
			System.out.println("overload the main method");
			}

			public static void main(String[] args)
			{
			System.out.println("main method");
			}
}
</pre>
<pre id="outputpre">
E:\JAVATP~1>javac Test.java
E:\JAVATP~1>java Test
main method
E:\JAVATP~1>
</pre>
<b>Case 2:</b><br>
<ul>
	<li>inheritance concept applicable for the main method.hence while executing child class if child  class doesn't contain 
	main method then parent class main method will be executed.</li>
</ul>
<pre id="codepre">
class Parent{
            public static void main(String[] args)
            {
            System.out.println("main method");
            }                                                    
}
class Child extends Parent{


}
</pre>
<pre id="outputpre">
E:\JAVATPONT-CMD>javac Parent.java
E:\JAVATPONT-CMD>java Parent
main method
</pre>
