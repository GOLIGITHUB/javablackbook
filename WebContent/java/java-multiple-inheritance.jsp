<!-- The Start -->
<h1>Multiple and Hybrid Inheritance  in Java </h1>
<hr>
<h6><b>Why multiple and Hybrid Inheritance  not support in java?</b></h6>
<h6><b>Example:</b></h6>
<pre id="codepre">
package com.app.inher;

class GrandFather{
	
	int a=100000;
	
	void showTheMoney()
	{
		System.out.println("GrandFather Money:"+a);
	}
	
}
class Father {
	
	int b=50000;
	int c=60000;	
	void showTheMoney()
	{
		System.out.println("Father take money of GrandFather:"+(a+b));
	}
	
}
class Child extends Father,GrandFather{
	
	
	
	void showTheMoney()
	{
		System.out.println("Child take money of Father:"+(a+c));
	}
}

	
class Hierarchialinheritance{
public static void main(String[] args) {
		
	GrandFather grandFather=new GrandFather();
	grandFather.showTheMoney();
	
	
	Father father=new Father();
	father.showTheMoney();
	
	Child child=new Child();
	child.showTheMoney();
	
	}
}
</pre>
<p><strong>Deccription:</strong></p>
