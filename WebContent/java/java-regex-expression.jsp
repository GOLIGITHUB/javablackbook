<p>Regular Expression: a group of string object accoding to paticular pattern.that is called regular expression.</p>
<p>BY using class name if we calling method.that method  retrun same class object such
type of method by default cosider as factory method <mark>or</mark>static factroy method</p>
<p>in the Regular Expression coursr can move up to n plus one index also</p>
<br>
<table class="table table-striped table-bordered table-hover table-condensed">
	<tr>
		<th>Pattern</th>
		<th>Matcher</th>
	</tr>
	<tr>
		<td>package:java.util.regex</td>
		<td>package:java.util.regex</td>
	<tr>
		<td>A pattern Object reperesents compile version  of  regular expression</td>
		<td>we can use matcher object to match the given pattern in the target String</td>
	</tr>

	<tr>
		<td>we can create a pattern object by using compile() of pattern class./td>
		<td>we can  create Matcher object by using matcher() method of pattern class</td>
	</tr>
	
	<tr>
		<td>This way to create Pattern class object:<br>
			Pattern p1=Pattern.complie("ab");</td>
		<td>This way to create Matcher class object:<br>
			Matcher m=p1.matcher("ababababa");</td>
	</tr>

	<tr>
		<td>public static Pattern compile(String regexString)</td>
		<td>public Matcher matcher(String  target)</td>	
	</tr>		

</table>

<ol>
	<li>Matcher Class: Group of thinks for search</ol>
		<ol type="1">
			<li> boolean  find();</il>
			<li> int start();</il>
			<li> int end(); (end() method return end+1, index)</il>
			<li> String group();</il>
		</ol>
</ol>
<p>we can use Quantifiers to specify number of occurrences to match.</p>


<table class="table table-striped table-bordered table-hover table-condensed">
<caption>Character classes</caption>
<tr>
<td>[abc]</td>	
<td>either a, b, or c</td>
</tr>

<tr>
<td>[^abc]</td>	
<td>Any character except a, b, or c</td>
</tr>

<tr>
<td>[a-z]</td>	
<td>Any lower case alphabet symbol</td>
</tr>


<tr>
<td>[A-Z]</td>	
<td>Any Upper case alphabet symbole</td>
</tr>

<tr>
<td>[a-zA-Z]</td>	
<td>Any  alphabet symbol either lower case or Upper case </td>
</tr>

<tr>
<td>[0-9]</td>	
<td>Any  digit from 0 to 9 </td>
</tr>

<tr>
<td>[a-zA-Z0-9]</td>	
<td>Any  alphanumeric and character</td>
</tr>

<tr>
<td>[^a-zA-Z0-9]</td>	
<td>Except alphanumeric characters(specil character)</td>
</tr>
</table> 
<pre id="codepre">
	<code>
	import java.util.regex.Matcher;
	import java.util.regex.Pattern;
	public class SimpleRegex2 {
		public static void main(String[] args) {
		Pattern pattern=Pattern.compile("i");
		Matcher matcher=pattern.matcher("a7b9a823A@ ");
									//0123456789
		int count=0;
		while(matcher.find())
		{
			count++;
			System.out.println(matcher.start()+"...."+matcher.group());
		}
	}	
}
	</code>
</pre>	
<table class="table table-striped table-bordered table-hover table-condensed">
		<tr>
			<th>i=[abc]</th>
			<th>i=[^abc]</th>
			<th>i=[a-z]</th>
			<th>i=[A-Z]</th>
			<th>i=[0-9]</th>
			<th>i=[a-zA-Z0-9]</th>
			<th>i=[^a-zA-Z0-9]</th>
		</tr>
		<tr>
			<td>0->a<br>
				2->b<br>
				4->a<br>
				</td>
			<td>1->7<br>
				3->9<br>
				5->8<br>
				6->2<br>
				7->3<br>
				8->A<br>
				9->@<br>
				</td>
			<td>0->a<br>
				2->b<br>
				4->a<br>
				</td>
			<td>
				8->A
			</td>
			<td>1->7<br>
				3->9<br>
				5->8<br>
				6->2<br>
				7->3<br>
			</td>
			<td>0->a<br>
				1->7<br>
				2->b<br>
				3->9<br>
				4->a<br>
				5->8<br>
				6->2<br>
				7->3<br>
				8->A
			</td>
			<td>
			9->@
			</td>			
		</tr>

</table>

<table class="table table-striped table-bordered table-hover table-condensed">
<caption>Predefined character classes</caption>

<tr>
<td>.</td>	
<td>Any character (may or may not match line terminators)</td>
<td>Any Symbol including special Character also.</td>
</tr>

<tr>
<td>\d</td>	
<td>Any digit from 0 to 9</td>
<td>Any digit from [0-9]</td> 
</tr>

<tr>
<td>\D</td>	
<td>A non-digit: [^0-9]</td>
<td>Any character except Digit.</td>
</tr>

<tr>
<td>\s</td>	
<td>A whitespace character: [ \t\n\x0B\f\r] </td>
<td>space character(we are search for space character)</td>
</tr>

<tr>
<td>\S</td>	
<td>A non-whitespace character: [^\s]</td>
<td>Any character except space </td>
</tr>

<tr>
<td>\w</td>	
<td>A word character: [a-zA-Z_0-9]</td>
<td>Any word character[any  alpha Numeric character][a-zA-Z0-9]</td>
</tr>

<tr>
<td>\W</td>	
<td>A non-word character: [^\w]</td>
<td>Except word character(special character also)</td>
</tr>
</table>


<pre 
id="codepre">	
	<code>
	import java.util.regex.Matcher;
	import java.util.regex.Pattern;
	public class SimpleRegex3 {
		public static void main(String[] args) {
		Pattern pattern=Pattern.compile("i");
		Matcher matcher=pattern.matcher("a1Aj@4 #9b");
		//								 0123456789			
		while(matcher.find()){
			System.out.println(matcher.start()+"->"+matcher.group());
		}
}	
}
	</code>	
</pre>
<table class="table table-striped table-bordered table-hover table-condensed">
		<tr>
			<th>i=\\d</th>
			<th>i=\\D</th>
			<th>i=\\s</th>
			<th>i=\\S</th>
			<th>i=\\w</th>
			<th>i=\\W</th>
		</tr>
		<tr>
			<td>1->1<br>
				5->4<br>
				8->9
			</td>
	        <td>0->a<br>
	        	2->A<br>
	        	3->j<br>
	        	4->@<br>
	        	6-> <br>
	        	7->#<br>
	        	9->b
	        </td>
	        <td>6-> </td>
	        <td>0->a<br>
	        	1->1<br>
	        	2->A<br>
	        	3->j<br>
	        	4->@<br>
	        	5->4<br>
	        	7->#<br>
	        	8->9<br>
	        	9->b
	        </td>
	        <td>0->a<br>
				1->1<br>
				2->A<br>
				3->j<br>
				5->4<br>
				8->9<br>
				9->b<br>
	        </td>
	        <td>4->@<br>
				6-> <br> 
				7->#<br>
	        </td>

		</tr>	

</table>

<!-- <table class="table table-striped table-bordered table-hover table-condensed">
<caption>Boundary matchers</caption>

<tr>
<td>^</td>
<td>The beginning of a line</td>
</tr>


<tr>
<td>$</td>	
<td>The end of a </td>
</tr>

<tr>
<td>\b</td>	
<td>A word boundary</td>
</tr>

<tr>
<td>\B</td>
<td>A non-word boundary]</td>
</tr>

<tr>
<td>\A</td>
<td>The beginning of the input</td>
</tr>

<tr>
<td>\G</td>
<td>The end of the previous match</td>
</tr>

<tr>
<td>\Z</td>	
<td>The end of the input but for the final terminator, if any</td>
</tr>

<tr>
<td>\z</td>
<td>The end of the input</td>
</tr>
 </table>
 -->
<table class="table table-striped table-bordered table-hover table-condensed"> 
<caption>Greedy quantifiers</caption>
<tr>
	<td>+</td>
	<td>Match one or more</td>
	
</tr>
<tr>
	<td>*</td>
	<td>Match zero or more</td>
</tr>
<tr>
	<td>?</td>
	<td>Match zero or one</td>
</tr>
<tr>
	<td>i</td>
	<td>i, Exactly one a</td>
</tr>
<tr>
	<td>i?</td>
	<td>i, once or not at all(almost one i)</td>
</tr>
<tr>
	<td>i*</td>
	<td>i, zero or more times(Any number of a's including Zero number also)</td>	
</tr>

<tr>	
<td>i+</td>	
<td>i, one or more times(atleast one time i)</td>
</tr>

<tr>
<td>i{n}</td>	
<td>i, exactly n times</td>
</tr>

<tr>
<td>i{n,}</td>
<td>i, at least n times</td>
</tr>

<tr>
<td>i{n,m}</td>
<td>i, at least n but not more than m times</td>	
</tr>

</table> 

<pre 
id="codepre">
	<code>
	package com.app.durga;
	//Greedy quantifiers
	import java.util.regex.Matcher;
	import java.util.regex.Pattern;

	public class SimpleRegex4 {
		
		public static void main(String[] args) {
			Pattern pattern=Pattern.compile("i");
			Matcher matcher=pattern.matcher("aacbxyyzttggrt");
			int count=0;
			while(matcher.find())
			{
				count++;
				System.out.println(matcher.start()+"->"+matcher.group());
			}
		}	
	}

	</code>
</pre>
<table class="table table-striped table-bordered table-hover table-condensed">
		<tr>
			<th>i=a</th>
			<th>i=a+</th>
			<th>i=a*</th>
			<th>i=a?</th>
		</tr>
		<tr>
			<td>0->a<br>
			1->a</td>
			<td>0->aa</td>
			<td>0->aa
				2-><br>
				3-><br>
				4-><br>
				5-><br>
				6-><br>
				7-><br>
				8-><br>
				9-><br>
				10-><br>
				11-><br>
				12-><br>
				13-><br>
				14-><br>
				</td>

			<td>
				0->a<br>
				1->a<br>
				2-><br>
				3-><br>
				4-><br>
				5-><br>
				6-><br>
				7-><br>
				8-><br>
				9-><br>
				10-><br>
				11-><br>
				12-><br>
				13-><br>
				14-><br>
				</td>
			</tr>	
</table>
<br>
<h1>Pattern class</h1>
<h3>split() method </h3>
<p><strong>split() method parsent in Patter class</strong></p>
<p><strong>String[] split(CharSequence string)</strong></p>
<p>We can use pattern class split() to split the give target String according  to the given pattern</p>
<h1>String class</h1>
<p> public String[] split(String xyz)
	  {
	    return split(xyz, 0);
	  }</p>
<p><strong>String class split() method can take pattern s agruments.where as Pattern class split() method can target String as arguments </strong></p>
<pre 
id="codepre">
	<code>
	public class SimpleRegex5 {
	public static void main(String[] args) {
		Pattern pattern=Pattern.compile("\\s");
		String[] s1=pattern.split("Keep doing Ashu.");
		
		for(String s2:s1){
			System.out.println(s2);
		}
	}	
}

	</code>
</pre>
<pre id="outputpre">Output:
	Keep
	doing
	Ashu.
</pre>

<pre 
id="codepre">
	<code>
		public class SimpleRegex5 {
		public static void main(String[] args) {
		Pattern pattern=Pattern.compile("\\.");//"[.]" or "\\." both are same
		String[] s1=pattern.split("Keep.doing.Ashu.");
		
		for(String s2:s1){
			System.out.println(s2);
		}
	}	
}
	</code>
</pre>
<pre id="outputpre">Output:
	Keep
	doing
	Ashu
</pre>
<pre 
id="codepre">
	<code>
		public class SimpleRegex5 {
		public static void main(String[] args) {
		Pattern pattern=Pattern.compile("\\d");
		String[] s1=pattern.split("ashumishra9015@gmail.com");
		for(String s2:s1){
			System.out.println(s2);
		}
	}	
}

	</code>
</pre>
<pre id="outputpre">Output:
	 ashumishra



     @gmail.com
	
</pre>
<h2>StringTokenizer class</h2>
<p3>java.util.*;</p3>
<p>it is the specially designed class for Tokenization Activity.</p>
<p>this classs present in java.util Package.</p>
<p>specially desigern for tokenizartion activtiy</p>
<pre 
id="codepre">
	<code>
		import java.util.StringTokenizer;
		public class SimpleRegex7 {
		public static void main(String[] args) {
		StringTokenizer tokenizer=new StringTokenizer("Keep doing ashutosh !!!");
		while(tokenizer.hasMoreElements()){
			System.out.println(tokenizer.nextToken());
		}
	}	
}
	</code>
</pre>
<pre id="outputpre">Output:Keep
			doing
			ashutosh
			!!!	
</pre>
<pre
id="codepre">
	<code>
	public class SimpleRegex8 {
	public static void main(String[] args) {
		StringTokenizer tokenizer=new StringTokenizer("26-7-1991-DOB","-");
		while(tokenizer.hasMoreElements()){
			System.out.println(tokenizer.nextToken());
		}
	}	
}
	</code>
</pre>
<pre id="outputpre">
	Output:
	26
	7
	1991
	DOB
</pre>
