<!-- The Start -->
<h1>Multithreading in Java </h1>
<hr>

<h6><b>What is thread?</b></h6>
<p>it is light wait process or user define task.</p>
<h6><b>What is multithreading?</b></h6>
<p>multiple thread run at a time is called multithreading or </p>
<p>Executing more then one thread at a time is called multithreading.and in multithreading each and ever
thread separate independence process of same application</p>
<h6><b>What is multitasking?</b></h6>
<p>executing more then one task simultaneously is called multitasking. or</p>
<p>executing more then one task at time is called multitasking. or</p>
<p>each and every task is separate independence process that is called multitasking.</p>
<h6><b>How many way to create thread?</b></h6>
<p>in java  3 way to create thread</p>
<ol>
	<li>by extending Thread class</li>
	<li>by implementing runnable interface</li>
	<li>by callable interface (We Discuss on later)</li>
</ol>
<b>Note:</b><p>Each and ever execution start from main method one thread is started automatic that thread name is called main thread</p>
<pre id="codepre">
package com.app.multithread;

public class Multithreading {

	public static void main(String[] args) {//main thread
		
		System.out.println("thread 1");//main thread execution
		System.out.println("thread 2");//main thread execution
		System.out.println("thread 3");//main thread execution
		System.out.println("thread 4");//main thread execution
		System.out.println("thread 5");//main thread execution
	}//main thread ending
}
</pre>
<pre id="outputpre">
thread 1
thread 2
thread 3
thread 4
thread 5
</pre>
<p><b>description:</b>is called single thread model</p>
<p>
<strong>Step 1:</strong>
Create own thread our normal java class become a thread class whenever extends the predefine thread class
</p>
<p><strong>Step 2:</strong>
implements the run() method. this method prasent in thread class with empty implemention and override run method. 
</p>
<p><strong>Step 3:</strong>
create instance of class 
</p>
<p><strong>Step 4:</strong>
Start a thread using start() method.
</p>
<p>main thread required to start user define threads class</p>
<p></p>