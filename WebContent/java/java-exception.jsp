
<pre id="codepre">
class Exception1{
public static void main(String[] args) {
System.out.println("Hello 1");
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
//System.out.println(100/0);//java.lang.ArithmeticException: / by zero
String name=null;
//System.out.println(name.charAt(0));//java.lang.NullPointerException
int[] arr={};
//System.out.println(arr[0]);//java.lang.ArrayIndexOutOfBoundsException: 0
String num="ashu";
//System.out.println(Integer.parseInt(num));//java.lang.NumberFormatException: For input string: "ashu"
String com="JAVABLACKBOOK";
//System.out.println(com.charAt(14));//java.lang.StringIndexOutOfBoundsException: String index out of range: 14
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}	
</pre>	
<pre  id="outputpre">
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
Rest of code
Hello 6
Hello 7
Hello 8
Hello 9
Hello 10
</pre>
<h1>Exception handling with individual try catch block</h1>
<pre id="codepre">
class Exception2{
public static void main(String[] args) {
System.out.println("Hello 1");
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
try{
//java.lang.ArithmeticException: / by zero
System.out.println(100/0);
}catch(Exception e2){
System.out.println(e2);
}
try{
//java.lang.NullPointerException	
String name=null;
System.out.println(name.charAt(0));
}catch(Exception e2){
System.out.println(e2);
}
try{
//java.lang.ArrayIndexOutOfBoundsException: 0	
int[] arr={};
System.out.println(arr[0]);
}catch(Exception e2){
System.out.println(e2);
}
try{
//java.lang.NumberFormatException: For input string: "ashu"
String num="ashu";
System.out.println(Integer.parseInt(num));
}catch(Exception e2){
System.out.println(e2);
}
try{
//java.lang.StringIndexOutOfBoundsException: String index out of range: 14	
String com="JAVABLACKBOOK";
System.out.println(com.charAt(14));
}catch(Exception e2){
System.out.println(e2);
}
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}
</pre>
<pre id="outputpre">
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
java.lang.ArithmeticException: / by zero
java.lang.NullPointerException
java.lang.ArrayIndexOutOfBoundsException: 0
java.lang.NumberFormatException: For input string: "ashu"
java.lang.StringIndexOutOfBoundsException: String index out of range: 14
Rest of code
Hello 6
Hello 7
Hello 8
Hello 9	
</pre>
<h1>Exception handling with individual try catch block using Throwable class </h1>
<pre id="codepre">
class Exception3{
public static void main(String[] args) {
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
try{
//java.lang.ArithmeticException: / by zero
System.out.println(100/0);
}catch(Throwable  e2){
System.out.println(e2);
}
try{
//java.lang.NullPointerException	
String name=null;
System.out.println(name.charAt(0));
}catch(Throwable e2){
System.out.println(e2);
}
try{
//java.lang.ArrayIndexOutOfBoundsException: 0	
int[] arr={};
System.out.println(arr[0]);
}catch(Throwable e2){
System.out.println(e2);
}
try{
//java.lang.NumberFormatException: For input string: "ashu"
String num="ashu";
System.out.println(Integer.parseInt(num));
}catch(Throwable e2){
System.out.println(e2);
}
try{
//java.lang.StringIndexOutOfBoundsException: String index out of range: 14	
String com="JAVABLACKBOOK";
System.out.println(com.charAt(14));
}catch(Throwable e2){
System.out.println(e2);
}
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}
</pre>
<pre id="outputpre">
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
java.lang.ArithmeticException: / by zero
java.lang.NullPointerException
java.lang.ArrayIndexOutOfBoundsException: 0
java.lang.NumberFormatException: For input string: "ashu"
java.lang.StringIndexOutOfBoundsException: String index out of range: 14
Rest of code
Hello 6
Hello 7
Hello 8
Hello 9
Hello 10
</pre>
<h1>Exception handling with single try with multiple catch block using Exception class</h1>
<pre id="codepre">
class Exception4{
public static void main(String[] args) {
System.out.println("Hello 1");
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
try{
//java.lang.ArithmeticException: / by zero
System.out.println(100/0);
//java.lang.NullPointerException	
String name=null;
System.out.println(name.charAt(0));
//java.lang.ArrayIndexOutOfBoundsException: 0	
int[] arr={};
System.out.println(arr[0]);
//java.lang.NumberFormatException: For input string: "ashu"
String num="ashu";
System.out.println(Integer.parseInt(num));
//java.lang.StringIndexOutOfBoundsException: String index out of range: 14
String com="JAVABLACKBOOK";
System.out.println(com.charAt(14));
}catch(ArithmeticException  e2){
	System.out.println("ArithmeticException========> "+e2);
}catch(NullPointerException  e2){
	System.out.println("NullPointerException========>"+e2);
}catch(ArrayIndexOutOfBoundsException  e2){
	System.out.println("ArrayIndexOutOfBoundsException====>"+e2);
}catch(NumberFormatException  e2){
	System.out.println("NumberFormatException=============>"+e2);
}catch(StringIndexOutOfBoundsException  e2){
	System.out.println("StringIndexOutOfBoundsException====>"+e2);
}
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}
</pre>
<pre id="outputpre">
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
ArithmeticException========> java.lang.ArithmeticException: / by zero
Rest of code
Hello 6
Hello 7
Hello 8
Hello 9
Hello 10	
</pre>
<h1>Exception handling with single try with multiple catch block using parent and child class Exception</h1>
<pre id="codepre">
class Exception5{
public static void main(String[] args) {
System.out.println("Hello 1");
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
try{
//java.lang.ArithmeticException: / by zero
System.out.println(100/0);
//java.lang.NullPointerException	
String name=null;
System.out.println(name.charAt(0));
//java.lang.ArrayIndexOutOfBoundsException: 0	
int[] arr={};
System.out.println(arr[0]);
//java.lang.NumberFormatException: For input string: "ashu"
String num="ashu";
System.out.println(Integer.parseInt(num));
//java.lang.StringIndexOutOfBoundsException: String index out of range: 14
String com="JAVABLACKBOOK";
System.out.println(com.charAt(14));
}catch(ArithmeticException  e2){
	System.out.println("ArithmeticException========> "+e2);
}catch(NullPointerException  e2){
	System.out.println("NullPointerException========>"+e2);
}catch(ArrayIndexOutOfBoundsException  e2){
	System.out.println("ArrayIndexOutOfBoundsException====>"+e2);
}catch(NumberFormatException  e2){
	System.out.println("NumberFormatException=============>"+e2);
}catch(StringIndexOutOfBoundsException  e2){
	System.out.println("StringIndexOutOfBoundsException====>"+e2);
}catch(Exception e2){
	System.out.println("FATHER class of Exception:"+e2);
}
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}
</pre>
<pre id="outputpre">
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
ArithmeticException========> java.lang.ArithmeticException: / by zero
Rest of code
Hello 6
Hello 7
Hello 8
Hello 9
Hello 10
</pre>
<h1>Exception handling with single try with finally block</h1>
<pre id="codepre">
class Exception6{
public static void main(String[] args) {
System.out.println("Hello 1");
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
try{
//java.lang.ArithmeticException: / by zero
System.out.println(100/0);

//java.lang.NullPointerException	
String name=null;
System.out.println(name.charAt(0));

//java.lang.ArrayIndexOutOfBoundsException: 0	
int[] arr={};
System.out.println(arr[0]);

//java.lang.NumberFormatException: For input string: "ashu"
String num="ashu";
System.out.println(Integer.parseInt(num));

//java.lang.StringIndexOutOfBoundsException: String index out of range: 14
String com="JAVABLACKBOOK";
System.out.println(com.charAt(14));

}finally{
System.out.println("Any How");
}
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}
</pre>
<pre id="outputpre">
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
Any How
Exception in thread "main" java.lang.ArithmeticException: / by zero
        at Exception6.main(Exception6.java:11)	
</pre>
<h1>Exception handling with single try with multiple catch with finally block </h1>
<pre id="codepre">
class Exception7{
public static void main(String[] args) {
System.out.println("Hello 1");
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
try{
//java.lang.ArithmeticException: / by zero
System.out.println(100/2);

//java.lang.NullPointerException	
String name="ashu";
System.out.println(name.charAt(0));

//java.lang.ArrayIndexOutOfBoundsException: 0	
int[] arr={1};
System.out.println(arr[0]);

//java.lang.NumberFormatException: For input string: "ashu"
String num="ashu";
System.out.println(Integer.parseInt(num));

//java.lang.StringIndexOutOfBoundsException: String index out of range: 14
String com="JAVABLACKBOOK";
System.out.println(com.charAt(14));

}catch(ArithmeticException  e2){
	System.out.println("ArithmeticException========> "+e2);
}catch(NullPointerException  e2){
	System.out.println("NullPointerException========>"+e2);
}catch(ArrayIndexOutOfBoundsException  e2){
	System.out.println("ArrayIndexOutOfBoundsException====>"+e2);
}catch(NumberFormatException  e2){
	System.out.println("NumberFormatException=============>"+e2);
}catch(StringIndexOutOfBoundsException  e2){
	System.out.println("StringIndexOutOfBoundsException====>"+e2);
}catch(Exception e2){
	System.out.println("FATHER class of Exception:"+e2);
}finally{
	System.out.println("Any How");
}
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}
</pre>
<pre id="outputpre">
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
50
a
1
NumberFormatException=============>java.lang.NumberFormatException: For input string: "ashu"
Any How
Rest of code
Hello 6
Hello 7
Hello 8
Hello 9
Hello 10	
</pre>
<h1>Exception handling with single try  and catch with finally block</h1>
<pre id="codepre">
class Exception8{
public static void main(String[] args) {
System.out.println("Hello 1");
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
try{
//java.lang.ArithmeticException: / by zero
System.out.println(100/2);

//java.lang.NullPointerException	
String name="ashu";
System.out.println(name.charAt(0));

//java.lang.ArrayIndexOutOfBoundsException: 0	
int[] arr={1};
System.out.println(arr[0]);

//java.lang.NumberFormatException: For input string: "ashu"
String num="12";
System.out.println(Integer.parseInt(num));

//java.lang.StringIndexOutOfBoundsException: String index out of range: 14
String com="JAVABLACKBOOK";
System.out.println(com.charAt(14));

}catch(Exception | ArithmeticException | NullPointerException | ArrayIndexOutOfBoundsException | NumberFormatException | StringIndexOutOfBoundsException e2){
	System.out.println("For All Exception ========> "+e2);
}finally{
	System.out.println("Any How");
}
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}
</pre>
<pre id="outputpre">
Exception8.java:29: error: Alternatives in a multi-catch statement cannot be related by subclassing
                }catch(Exception | ArithmeticException | NullPointerException | ArrayIndexOutOfBound
sException | NumberFormatException | StringIndexOutOfBoundsException e2){
                                   ^
  Alternative ArithmeticException is a subclass of alternative Exception
Exception8.java:29: error: Alternatives in a multi-catch statement cannot be related by subclassing
                }catch(Exception | ArithmeticException | NullPointerException | ArrayIndexOutOfBound
sException | NumberFormatException | StringIndexOutOfBoundsException e2){
                                                         ^
  Alternative NullPointerException is a subclass of alternative Exception
Exception8.java:29: error: Alternatives in a multi-catch statement cannot be related by subclassing
                }catch(Exception | ArithmeticException | NullPointerException | ArrayIndexOutOfBound
sException | NumberFormatException | StringIndexOutOfBoundsException e2){
                                                                                ^
  Alternative ArrayIndexOutOfBoundsException is a subclass of alternative Exception
Exception8.java:29: error: Alternatives in a multi-catch statement cannot be related by subclassing
                }catch(Exception | ArithmeticException | NullPointerException | ArrayIndexOutOfBound
sException | NumberFormatException | StringIndexOutOfBoundsException e2){

             ^
  Alternative NumberFormatException is a subclass of alternative Exception
Exception8.java:29: error: Alternatives in a multi-catch statement cannot be related by subclassing
                }catch(Exception | ArithmeticException | NullPointerException | ArrayIndexOutOfBound
sException | NumberFormatException | StringIndexOutOfBoundsException e2){

                                     ^
  Alternative StringIndexOutOfBoundsException is a subclass of alternative Exception
5 errors	
</pre>
<h1>Exception handling with try and catch with finally block</h1>
<pre id="codepre">
class ExceptionTesting{
public static void main(String[] args) {
System.out.println("Hello 1");
System.out.println("Hello 2");
System.out.println("Hello 3");
System.out.println("Hello 4");
System.out.println("Hello 5");
try{
//java.lang.ArithmeticException: / by zero
System.out.println(100/0);
}catch(Error e2){
System.out.println("For All Exception ========> "+e2);
}finally{
System.out.println("Any How");
}
System.out.println("Rest of code");
System.out.println("Hello 6");
System.out.println("Hello 7");
System.out.println("Hello 8");
System.out.println("Hello 9");
System.out.println("Hello 10");
}
}
</pre>
<pre id="outputpre">
Hello 1
Hello 2
Hello 3
Hello 4
Hello 5
Any How
Exception in thread "main" java.lang.ArithmeticException: / by zero
        at ExceptionTesting.main(ExceptionTesting.java:11)	
</pre>