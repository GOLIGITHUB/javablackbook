<div class="thumbnail">
         <img src="inheritance/single.jpg" alt="multilevel">
          <div class="caption">
            <p>A class extends B  </p>
          </div>
</div>

<h6><b>What is single inheritance?</b></h6>
<p>One father with One child Relationship is called single inheritance</p>

<pre id="codepre">
package com.app.inher;

class  Father
{
	void fatherColor()
	{
		System.out.println("white");
	}
}
class Child extends Father
{
	
	void fatherColor()
	{
		System.out.println("black");
	}
}


public class SingleInheritance {

	public static void main(String[] args) {
		 
		Father father=new Father();
		Child child=new Child();
		father.fatherColor();
		child.fatherColor();
		
		
	}

}
</pre>
<pre  id="outputpre">
Output:
white
black
</pre>

<pre id="codepre">
package com.app.inher;

class  Father
{
	void fatherColor()
	{
		System.out.println("white");
	}
}
class Child extends Father
{
	
	void fatherColor()
	{
		System.out.println("black");
	}
}


public class SingleInheritance {

	public static void main(String[] args) {
		 
		Father father=new Child();
		father.fatherColor();
		
	}

}
</pre>
<pre  id="outputpre">
Output:
white
</pre>
