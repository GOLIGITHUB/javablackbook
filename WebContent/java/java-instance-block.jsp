<h6><b>What is Instance Block?</b></h6>
<p>Instance block  initialization the value at object creation and also it is executed in during object creation</p>
<p>Note:constructor and instance block are similer definition both are executed in during object creation</p>
<p>Open bras and Close bras that is instance block.</p>
<pre id="codepre">
Sysntax:
========
{
instance block
}
</pre>
<pre id="codepre">
class Test{
	
	{
	//instance block open	
		System.out.println("Empty Instance Block");
	//instance block close
	}

	Test(){
		System.out.println("0-args constructor");
	}
}
public class cons{
	public static void main(String[] args){
			Test con1=new Test();
		}
	}
</pre>
<pre id="outputpre">
OutPut:
Empty Instance Block
0-args constructor
</pre>

<p>During object creation time if there any instance block are there.then first 
instance block executed.once instance block compeleted then only constructor 
part is executed<p>

<pre id="codepre">
class Test{
	
	{
	//instance block open	
		System.out.println("Empty Instance Block");
	//instance block close
	}

	Test(){
		System.out.println("0-args constructor");
	}
	Test(int a){
		System.out.println("1-args constructor");
	}
	Test(int a,int b){
		System.out.println("2-args constructor");
	}
	Test(int a,int b,int c){
		System.out.println("3-args constructor");
	}
}
public class cons{
	public static void main(String[] args){
			Test con1=new Test();
			Test con2=new Test(1);
			Test con3=new Test(1,2);
			Test con4=new Test(1,2,3);
			
			}
	}
</pre>
<pre id="outputpre">
output:
Empty Instance Block
0-args constructor
Empty Instance Block
1-args constructor
Empty Instance Block
2-args constructor
Empty Instance Block
3-args constructor
</pre>
<h6><b>Can we define multipale instance block in class</b></h6>
<p>Yes ,So inside the class it is possible to define multiple instance bloack but execution order top to buttom</p>
<pre id="codepre">
class Test{
	
	{
	//instance block open	
		System.out.println("1 Empty Instance Block");
	//instance block close
	}
	{
		//instance block open	
			System.out.println("2 Empty Instance Block");
		//instance block close
		}


	Test(){
		System.out.println("0-args constructor");
	}
	Test(int a){
		System.out.println("1-args constructor");
	}
	Test(int a,int b){
		System.out.println("2-args constructor");
	}
	Test(int a,int b,int c){
		System.out.println("3-args constructor");
	}
}
public class cons{
	public static void main(String[] args){
			Test con1=new Test();
			Test con2=new Test(1);
			Test con3=new Test(1,2);
			Test con4=new Test(1,2,3);
			
			}
	}
</pre>
<pre id="outputpre">
1 Empty Instance Block
2 Empty Instance Block
1-args constructor
1 Empty Instance Block
2 Empty Instance Block
2-args constructor
1 Empty Instance Block
2 Empty Instance Block
3-args constructor
</pre>
<p>Constructor execution depend on object creation and instance block also depend on object creation but not constructor execution.</p>
<pre id="codepre">
package com.javatpoint.instance;

class Test{
	
	{
	//instance block open	
		System.out.println("1 Empty Instance Block");
	//instance block close
	}
	
	Test(){
		System.out.println("0-args constructor");
	}
	
	
}
public class cons{
	public static void main(String[] args){
			Test con1=new Test();
			Test con2=new Test();
			Test con3=new Test();
			
			}
	}
</pre>
<pre id="outputpre">
1 Empty Instance Block
0-args constructor
1 Empty Instance Block
0-args constructor
1 Empty Instance Block
0-args constructor
</pre>

<pre id="codepre">
package com.javatpoint.instance;

class Test{
	
	{
	//instance block open	
		System.out.println("Empty Instance Block");
	//instance block close
	}
	
	Test(){
		this(1);
		System.out.println("0-args constructor");
	}
	
	Test(int a){
		this(1,2);
		System.out.println("1-args constructor");
	}
	
	Test(int a,int b){
		this(1,2,3);
		System.out.println("2-args constructor");
	}
	Test(int a,int b,int c){
		
		System.out.println("3-args constructor");
	}
	
	
}
public class cons{
	public static void main(String[] args){
			Test con1=new Test();
			
			}
	}
</pre>

<pre id="outputpre">
Empty Instance Block
3-args constructor
2-args constructor
1-args constructor
0-args constructor
</pre>
<p>What's the difference between an instance block and a constructor?</p>
<p>logical answer:
<p>Instance Block :instance block logic common for all object</p>
<p>Constructor: constructor logic specific to Object</p>

<pre id="codepre">
package com.javatpoint.instance;

class Test{
	
	{
	//instance block open	
		System.out.println("Empty Instance Block");
	//instance block close
	}
	
	Test(){
		System.out.println("0-args constructor");
	}
	
	Test(int a){
		System.out.println("1-args constructor");
	}
	
	Test(int a,int b){
		System.out.println("2-args constructor");
	}
	Test(int a,int b,int c){
		System.out.println("2-args constructor");
	}
	
	
}
public class cons{
	public static void main(String[] args){
			Test con1=new Test();
			Test con2=new Test(1);
			Test con3=new Test(1,2);
			Test con4=new Test(1,2,3);
			
			}
	}
</pre>
<pre id="outputpre">
Empty Instance Block
0-args constructor
Empty Instance Block
1-args constructor
Empty Instance Block
2-args constructor
Empty Instance Block
2-args constructor
</pre>
<pre id="codepre">
package com.javatpoint.instance;

class Test{
	
	{
	//instance block open	
		System.out.println("Empty Instance Block");
	//instance block close
	}
	
	Test(){
		this(1);
		System.out.println("0-args constructor");
	}
	
	Test(int a){
		this(1,2);
		System.out.println("1-args constructor");
	}
	
	Test(int a,int b){
		this(1,2,3);
		System.out.println("2-args constructor");
	}
	Test(int a,int b,int c){
		
		System.out.println("3-args constructor");
	}
	
	
}
public class cons{
	public static void main(String[] args){
			Test con1=new Test();
			
			}
	}
</pre>
<pre id="outputpre">
Empty Instance Block
3-args constructor
2-args constructor
1-args constructor
0-args constructor
</pre>
<div>
<h6><b>What is need of instance block?</b></h6>
<p>Every object creation constructor logic  executed corrosponding object and corrosponding instance block executed</p>
<p>instance block logic common for all object</p>
<p>constructor logic specific to object  3 object  3 constructior</p>
</div>
