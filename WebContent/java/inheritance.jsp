<h6><b>Class</b></h6>
<p>class is logical entity. it  contain some logic of the application.</p>
<p>class is blueprint of object without class we not enable to create a object.</p>
<h6><b>Object</b></h6>
<p>Object is physical entity.it is allocated memory.</p>

<h6><b>What is oops?</b></h6>
<p>Object-oriented programming System (OOPS)  are just methodology by using these methodology.we are achieving the project requirement</p>

<h6><b>What is Inheritance?</b></h6>
<p>Father is providing properties and child is acquire the properties.Father and child relationship is called inheritance.</p>
						or<br><br>
<p>The process of acquiring properties and behaviour one class to other class is called inheritance.</p>

<h6><b>How to achieve Inheritance?</b></h6>
<p>Achieve the inherit by using extends keyword</p>

<h6><b>What is purpose of extends keyword?</b></h6>
<p>It is making relationship between two classes once relationship is done automatically re-used code the.Class extends only one class at time.</p>

<h6><b>Who is providing properties?</b></h6>
<p>Parent class or Super class or Base class providing properties. </p>

<h6><b>Who is required a properties?</b></h6>
<p>Child class or Sub-class or Drive class required a properties</p>


<pre>
class A//Parent Class or Super Class or Base Class

class B extends A//Child Class or Sub-Class or Drive Class 
</pre>

<p>Inheritance it is possible to create a object both parent and child class.</p>

<p>Inheritance is also know as is-relationship UML-Diagram(Is-A) relationship</p>

<p>if your are creating object for parent class.it is possible to access only parent properties </p>

<p>In project level it is recommended to create  a object of parent class and child class</p>

<p><b>Answer:</b>Obesely it is recommended to create a object of child class why ashu.when  we are create object of child classes.it is  possible to access 
parents classes property also</p>

<pre>
class A//Parent Class or Super Class or Base Class

class B extends A//Child Class or Sub-Class or Drive Class 
</pre>


<strong>Note:</strong>
<p>
Your are extends a class your class become a parents class.<br>
If your not extents any class then by default your class extends object class.<br>
Every class in java is a child class of object is directly or Indirectly way.<br> 
</p>

<pre id="codepre">
class  A extends Object
{
//internally in a java parents class extends Object class	
//it is direct approach	
}
class B extends A
{
// B class also extends Object class but it is Indirect ways	
}

class C extends B
{
// C class also extends Object class but it is Indirect ways		
}
</pre>


 
<p><strong>Question:</strong>What is a root of all java classes?</p>
<p><strong>Answer:</strong>Root of all java classes is object class.</p>

<h6><b>Type of Inheritance </b></h6>
<p> 5 type of inheritance in java 
<ul>
	<li>Single inheritance</li>
	<li>Multilevel inheritance</li>
	<li>Hierarchical Inheritance</li>
	<li>Hybrid Inheritance(only case of interface)</li>
	<li>Multiple Inheritance(only case of interface)</li>
</ul>
<strong>Note:</strong><p>But Hybrid Inheritance and Multiple Inheritance supported by interface</p>
 
 <!-- The End  -->
 