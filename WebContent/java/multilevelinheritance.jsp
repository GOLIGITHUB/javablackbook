<div class="thumbnail">
         <img src="inheritance/multilevel.jpg" alt="multilevel">
          <div class="caption">
            <p>A class extends B class  and B class extends C class </p>
          </div>
</div>



<h6><b>What is Multilevel Inheritance? </b></h6>
<p>Your child  and your self and your father that hierarchy is called multilevel inheritance</p>
<pre id="codepre">
package com.app.inher;

class GrandFather{
	
	 int a=100000;
	
	void showTheMoney()
	{
		System.out.println("GrandFather Money:"+a);
	}
	
}
class Father extends GrandFather{
	
	int b=50000;
	int c=60000;	
	void showTheMoney()
	{
		System.out.println("Father take money of GrandFather:"+(a+b));
	}
	
}
class Child extends Father{
	
	
	
	void showTheMoney()
	{
		System.out.println("Child take money of Father:"+(a+c));
	}
}
public class Multilevelinheritance {
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
<pre  id="outputpre">
GrandFather Money:100000
Father take money of GrandFather:150000
Child take money of Father:160000
</pre>

<pre id="codepre">
package com.app.inher;

class GrandFather{
	
	 static int a=100000;
	
	void showTheMoney()
	{
		System.out.println("GrandFather Money:"+a);
	}
	
}
class Father extends GrandFather{
	
	int b=50000;
	int c=60000;	
	void showTheMoney()
	{
		System.out.println("Father take money of GrandFather:"+(a+b));
	}
	
}
class Child extends Father{
	
	
	
	void showTheMoney()
	{
		System.out.println("Child take money of Father:"+(a+c));
	}
}
public class Multilevelinheritance {
	public static void main(String[] args) {
		
		GrandFather grandFather=new GrandFather();
		grandFather.a=200000;
		grandFather.showTheMoney();
		
		
		Father father=new Father();
		father.showTheMoney();
		
		Child child=new Child();
		child.showTheMoney();
	}

}
</pre>
<pre id="outputpre">
GrandFather Money:200000
Father take money of GrandFather:250000
Child take money of Father:260000
</pre>
<pre id="codepre">
package com.app.inher;

class GrandFather{
	
	void  grandFatherName()
	{
		System.out.println("James Gosling"); 
	}
	
	
}
class Father extends GrandFather{
	

	void  languageName()
	{
		System.out.println("java");
	}
	
	
}
class Child extends Father{
	
	
	
	void  yearName()
	{
		System.out.println("Between 1984 and 2010");
	}
	
	
}
public class Multilevelinheritance {
	public static void main(String[] args) {
		
		Child child=new Child();
		child.grandFatherName();
		child.languageName();
		child.yearName();
		
	}

}
</pre>
<pre id="outputpre">
Output:
James Gosling
java
Between 1984 and 2010
</pre>
<h6><b>Casting</b></h6>
<pre id="codepre">
package com.app.inher;

class GrandFather{
	
	void  grandFatherName()
	{
		System.out.println("James Gosling"); 
	}
	
	
}
class Father extends GrandFather{
	

	void  languageName()
	{
		System.out.println("java");
	}
	
	
}
class Child extends Father{
	
	
	
	void  yearName()
	{
		System.out.println("Between 1984 and 2010");
	}
	
	
}
public class Multilevelinheritance {
	public static void main(String[] args) {
		
		GrandFather child=new Child();
		child.grandFatherName();
		((Father) child).languageName();
		((Child) child).yearName();
		
	}

}
</pre>
<pre id="outputpre">
Output:
James Gosling
java
Between 1984 and 2010
</pre>
