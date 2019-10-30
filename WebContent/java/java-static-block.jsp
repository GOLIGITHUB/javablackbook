<div class="container">
<h6><b>What is static block?</b></h6>
<p>static block are use to writer logic those logic are execute during .class file loading.
Open bras and close bras  with static modifier that is called static block.
When we run the Class  that time JVM Preform two action</p>
<h6><b>What are the action?</b></h6>
<pre>
javac StaticBlock2.java//compile time
java  StaticBlock2//Run time
</pre>
<p></p>
<p><b>First action:</b>  .class file load into memory during.class file name load that time static block executed</p>
<p><b>Second action:</b> Static block execution depend upon class loading.that class loading only once</p>
<pre id="codepre">
Sysntax:
========
static{
static block
}
</pre>
<pre id="codepre">
package com.corejava.block;
public class StaticBlock2 {
	
	static {
	System.out.println("static block...");	
	}
	
	public static void main(String[] args) {
	/*
	 * Before JDK 5 version if we define the static block with main.code easy to 
	 * compile and Run but upto JDK 5 version it mandatory to define main method 
	 */
	}
}

</pre>
<pre  id="outputpre">
Output:
static block...
</pre>
<p>Here we write simple code of static block.static variable or static method or static block these are similer but it 
must be define main method  </p>
<pre id="codepre">
package com.corejava.block;

public class StaticBlock2 {
	
	static {
	System.out.println("Static Block...");	
	}
	StaticBlock2() {
	System.out.println("Default Constructor...");	
	}
	
	public static void main(String[] args) {
	StaticBlock2 staticBlock2=new StaticBlock2();
	
	}
}
</pre>
<pre id="outputpre">
Output:
Static Block...
Default Constructor...
</pre>
<p>Here in this example we use one static method and and one Default Constructor.if you are define
in your application  any static block first static block execute.same Here first static block execute 
then default constructor execute.</p>

<pre id="codepre">
package com.corejava.block;

public class StaticBlock2 {
	
	static {
	System.out.println("Static Block...");	
	}
	{
	System.out.println("Instance Block...");	
	}
	public StaticBlock2() {
	System.out.println("Default Constructor...");	
	}
	
	public static void main(String[] args) {
	StaticBlock2 staticBlock2=new StaticBlock2();
	
	}
}
</pre>
<pre id="outputpre">
Output:
Static Block...
Instance Block...
Default Constructor...
</pre>
<p>In instance block we are discuss what is instance block and is what  constructor.how it is work.
anyway again we discuss
Instance block and Constructor both are depaned upon object cration.and both execute during object creation
but static block not depend on object creation.static block load when .class file loading only one time.
So that ,In this example  we defile one instance block,one static block and one Constructor.if you define
in your application any instance block, static block and  Constructor.fristly static block execute then 
instance block execute then constructor part will be executed</p>
<h6><b>Can we define multipale static block in class</b></h6>
<p>Yes ,So inside the class it is possible to define multiple staic bloack but execution order top to buttom.
only one time when .class file loaded</p>
<pre id="codepre">
package com.corejava.block;

public class StaticBlock {
	
	{
	System.out.println("instance block 1...");	
	}
	{
	System.out.println("instance block 2...");	
	}
	
	static {
	System.out.println("static block 1...");	
	}
	static{
	System.out.println("static block 2...");	
	}

	StaticBlock(){
		System.out.println("default constructor...");
	}
	StaticBlock(int a){
		System.out.println("Parameterized  constructor...");
	}
	
	
	public static void main(String[] args) {
		
		StaticBlock method1=new StaticBlock();
		StaticBlock method2=new StaticBlock();
		
	}
	
}

</pre>
<pre  id="outputpre">
Output:
static block 1...
static block 2...
instance block 1...
instance block 2...
default constructor...
instance block 1...
instance block 2...
default constructor...
</pre>
<p>static block execute only one time because static block exceute when .class file loaded.you can understand .class file load one time.
and instance block and constroctor execute.when object is created.jb jb hum object create karege tb tb instance block or constructor execute hoga. 
</p>
</div>
