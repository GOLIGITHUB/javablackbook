<h1><b>What is interface?</b></h1>
<p>it is extension of abstract class. and interface only contant abstract method.</p>
<h1><b>What is Abstract ?</b></h1>
<p>Abstract is a class it contant at least one abstract method with abstract keyword</p>
<br>OR<br>
<p>A Abstract class define with abstract keyword and contain one normal method.</p>
<br>
<p>Abstract class object creation is not allowed</p> 


<table class="table">
<tr>
	<th>Interface</th>
	<th>Abstract Class</th>
</tr>
<tr >
	<td>if we don't know anything about implementation we have requirement specification   then we should go for interface</td>
	<td>if we are talking about implementation but not completely (partial implementation )  then we should go for abstract class. </td>
</tr>
<tr class="success">
	<td>Inside interface every method is alwasy public and abstract whether we are declaring  or not.Hence interface also considered as 100% pure Abstract class.</td>
	<td>Every method present in Abstract.in addition to Abstract method  we can take concrete method also.</td>
</tr>
<tr>
	<td>we can't declare interface method with the following  modifiers<br>
	public --> private , protected<br>
	Abstract --> final,static, synchronized,native,strictfp  </td>
	<td>there are no restriction on abstract class method modifiers</td>
</tr>
<tr class="success">
	<td>Every variable present inside interface is alwasy public ,static and final whether we are declaring or not. </td>
	<td>the variable present inside Abstract class need not be public static and final.</td>
</tr>
<tr>
	<td>for interface variable compulsory we should perform initialization at the time  of declaration  otherwise we will get compile time error.  </td>
	<td>for abstract  class variable  it is not required  to perform initialization at time of declaration. </td>
</tr>
<tr class="success">
	<td>Inside interface we con't declare instance  and static blocks otherwise we will get compile time error.</td>
	<td>Inside Abstract class we can  declare instance and static blocks.</td>
</tr>
<tr>
	<td>inside interface we can't declare constructor.</td>
	<td>inside Abstract class we can declare constructor,Which well be executed at time  of child object creation.</td>
</tr>	
</table>
<h6><b>What is interface?</b></h6>
<p>if we don't know anything about implementation just we have requirement specification(100%) then we should go for interface.
<br><b>Example:Servlet</b></p>
<h6><b>What is abstract?</b></h6>
<p>if we are talking about implementation but not completely (partial implementation )then we should go for abstract class.
<br><b>Example:GenericServlet and HTTPServlet</b></p>
<h6><b>What is Concrete?</b></h6>
<p>if we are talking about implementation completely  and ready  to provide service then  we should go for  concrete class.
<br><b>Example:MyServlet</b></p>
