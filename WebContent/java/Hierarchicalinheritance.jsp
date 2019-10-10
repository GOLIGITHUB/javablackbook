<div class="thumbnail">
         <img src="inheritance/4.PNG" alt="multilevel">
          <div class="caption">
            <p>A class extends B  </p>
          </div>
</div>

<h6><b>What is Hierarchical inheritance?</b></h6>
<p>One Father and Two child Relationship is called Hierarchical inheritance</p>

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
class Child extends GrandFather{
	
	int c=50000;
	
	void showTheMoney()
	{
		System.out.println("Child take money of GrandFather:"+(a+c));
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
<pre id="outputpre">
Output:
GrandFather Money:100000
Father take money of GrandFather:150000
Child take money of GrandFather:150000
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
class Child extends GrandFather{
	
	int c=50000;
	
	void showTheMoney()
	{
		System.out.println("Child take money of GrandFather:"+(a+c));
	}
}


class Hierarchialinheritance{
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
Child take money of GrandFather:250000
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
class Child extends GrandFather{
	
	
	
	void  yearName()
	{
		System.out.println("Between 1984 and 2010");
	}
	
	
}

		
		
	
class Hierarchialinheritance{
public static void main(String[] args) {
		
	Child child=new Child();
	child.grandFatherName();
	/*child.languageName();//complie time error*/	
	child.yearName();
	
	}
}
</pre>
<pre id="outputpre">
Output:
James Gosling
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
class Child extends GrandFather{
	
	
	
	void  yearName()
	{
		System.out.println("Between 1984 and 2010");
	}
	
	
}
class Hierarchialinheritance{
public static void main(String[] args) {
		
	GrandFather child=new Child();
	child.grandFatherName();
	/*((Father) child).languageName();//compile time error	*/
	((Child) child).yearName();
	
	}
}
</pre>
<pre id="outputpre">
James Gosling
Between 1984 and 2010
</pre>
