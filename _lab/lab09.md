---
layout: lab
num: lab09
ready: true
desc: "Finite State Machines"
assigned: 2018-12-04 08:00:00.00-7
due: 2018-12-07 23:59:59.00-7
---
<h1>Lab 9: Finite State Machines</h1>
<hr>
<p>Due Friday, December 7 at 11:59:59 PM</p>

<h2>Goals for This Week</h2>
<p>By the time you have completed this work, you should be able to:</p>
<ul>
  <li>Draw a finite state diagram corresponding to a basic word problem</li>
  <li>Demonstrate your ability to implement this state diagram via a circuit</li>
</ul>

<b>Provided files:</b>
<ul>
  <li><a href="{{'/lab/lab09/partner.txt' | relative_url }}"><code>partner.txt</code></a></li>
</ul>

<!-- DOCUMENTATION -->

<hr>
<h2>Step by Step Instructions</h2>
<p>
  For this week, you will translate a word problem into a diagram representing a finite state machine (FSM).
  From there, you will provide enough detail to implement the finite state machine as a circuit.
  There are multiple tasks for this assignment.
  While each task can be completed independently of each other, they progressively build in difficulty, so it is recommended to complete them in order.
  The tasks are listed below:
</p>

<ul>
  <li>Task 1: Design a FSM For a Digital Display</li>
  <li>Task 2: Design a FSM to Recognize <code>0110</code></li>
</ul>

<p>
  The initial step below describes how to get the files you will need into the appropriate place.
  These files are used for all the different tasks.
</p>

<h3>Initial Step: Create a Directory for This Lab and Copy Over the Files</h3>
<p>After you log in, go into your <code>cs64</code> directory that you created last time:</p>
<pre>
cd cs64
</pre>
<p>Then create a new directory for this lab: <code>lab9</code>:</p>
<pre>
mkdir lab9
</pre>
<p>Then go into that directory.</p>
<p>Now copy over all of the files necessary for this week's tasks:</p>
<pre>
cp ~zmatni/public_html/cs64f18/labs/9/partner.txt .
</pre>
<p>
  Note the use of the trailing <code>.</code> in the above command, which stipulates that the specified files should be copied into the current directory.
</p>

<h2>Task 1: Design a FSM For a Digital Display</h2>
<p>
  In this task, you will design a FSM which controls a seven segment display.
  Throughout this task, we will be using a seven segment display similar to the following (provided by <a href="https://en.wikipedia.org/wiki/Seven-segment_display">Wikipedia</a>):
</p>
<img src="7_segment_display.png">
<p>
  Each of the letters in the above diagram refers to an individual segment of the display.
  The identifier &ldquo;<code>DP</code>&rdquo; refers to the decimal point, which will not be used in this task.
  The display allows segments to be individiually turned on and off, allowing for different numbers to be represented by selectively enabling or disabling the right segments.
  The table below illustrates which segments need to be enabled for the corresponding decimal digit to be represented:
</p>
<table border="1">
  <tr>
    <th>Number</th>
    <th>Segments to Enable</th>
  </tr>
  <tr>
    <td><code>0</code></td>
    <td><code>A, B, C, D, E, F</code></td>
  </tr>
  <tr>
    <td><code>1</code></td>
    <td><code>B, C</code></td>
  </tr>
  <tr>
    <td><code>2</code></td>
    <td><code>A, B, G, E, D</code></td>
  </tr>
  <tr>
    <td><code>3</code></td>
    <td><code>A, B, G, C, D</code></td>
  </tr>
  <tr>
    <td><code>4</code></td>
    <td><code>F, B, G, C</code></td>
  </tr>
  <tr>
    <td><code>5</code></td>
    <td><code>A, F, G, C, D</code></td>
  </tr>
  <tr>
    <td><code>6</code></td>
    <td><code>A, F, G, E, C, D</code></td>
  </tr>
  <tr>
    <td><code>7</code></td>
    <td><code>A, B, C</code></td>
  </tr>
  <tr>
    <td><code>8</code></td>
    <td><code>A, B, C, D, E, F, G</code></td>
  </tr>
  <tr>
    <td><code>9</code></td>
    <td><code>A, B, C, D, F, G</code></td>
  </tr>
</table>

<p>
  The FSM for this task should alternate between displaying <code>1</code>, <code>2</code>, <code>4</code>, and <code>8</code>, in that order, and without the application of any external input (in other words, you go from one state to another on just the "tick" of the clock).
  In order to accomplish this, the inputs to the seven segment display will be treated as outputs of your FSM.
  That is, your FSM will output the appropriate values of <code>A</code>, <code>B</code>, <code>C</code>, <code>D</code>, <code>E</code>, <code>F</code>, and <code>G</code> in order to represent the numbers of interest.
  This overall task is separated into a series of questions, which should be submitted digitally via the <code>turnin</code> command.
</p>
<ol>
  <li>
    <p>
      Draw the finite state machine corresponding to this task.
      If you are submitting this online, put this diagram into a file named &ldquo;<code>display.jpg</code>&rdquo;.
    </p>
  </li>
  <li>
    <p>
      How many latches/flip-flops do you need to implement this state machine?
      (Hint: this corresponds to the number of bits necessary in order to encode all possible states uniquely.)
      If you are submitting this online, put this into a file named &ldquo;<code>display.txt</code>&rdquo;.
      This will be read by hand, so don't worry about the formatting (as long as it is clear and unambiguous).
    </p>
  </li>
  <li>
    <p>
      Draw a single truth table representing the behavior of the state machine.
      Be sure to label your states in binary.
      Your table should have inputs corresponding to whatever state you are in.
      The output corresponds to the next state to enter for a given input state, along with the values for the seven segment display.
      If you are submitting this online, add this to your &ldquo;<code>display.txt</code>&rdquo; file.
      This will be read by hand, so don't worry about the formatting (as long as it is clear and unambiguous).
    </p>
  </li>
  <li>
    <p>
      Using a Karnaugh map, determine the minimal sum-of-products formula corresponding to output <code>A</code> (corresponding to input <code>A</code> of the seven-segment display.
      Where appropriate, use <i>don't cares</i> in the map (note that there may be no appropriate uses of <i>don't cares</i>).
      If you are submitting this online, add this to your &ldquo;<code>display.txt</code>&rdquo; file.
      This will be read by hand, so don't worry about the formatting (as long as it is clear and unambiguous).
    </p>
  </li>
  <li>
    <p>
      Using a Karnaugh map, determine the minimal sum-of-products formula corresponding to the rightmost bit of the next state.
      Where appropriate, use <i>don't cares</i> in the map (note that there may be no appropriate uses of <i>don't cares</i>).
      If you are submitting this online, add this to your &ldquo;<code>display.txt</code>&rdquo; file.
      This will be read by hand, so don't worry about the formatting (as long as it is clear and unambiguous).
    </p>
  </li>
</ol>

<p>
  To help with questions 1-3, a solution to a very similar problem is provided <a href="{{'/lab/lab09/display_example.jpg' | relative_url }}">here</a>.
  In this example, the FSM alternates between displaying <code>1</code> and <code>7</code>.
  The diagram has these major components:
</p>
<ul>
  <li>
    Circles, representing the different states of the FSM.
    These are written in black.
    Each state has the following information written on it:
    <ul>
      <li>
        A human-readable label, written in purple.
        The labels chosen for this example correspond to whether the state displays a <code>1</code> or a <code>7</code>.
      </li>
      <li>
        A binary label, shown in parentheses and written in green.
        Each state needs a unique binary label, which is used in the truth table (shown in red at the bottom of the image).
      </li>
      <li>
        The output of the state, underlined and written in blue.
        For example, in state <code>7</code> (binary <code>1</code>), the output of the state is <code>ABC</code>, meaning segments <code>A</code>, <code>B</code>, and <code>C</code> in the seven-segment display should be activated.
        In conjunction, when these three segments are lit up, they display <code>7</code>.
      </li>
    </ul>
  </li>
  <li>
    Arrows, representing transitions between different states of the FSM.
    Transitions occur on clock ticks, which are provided by an unseen (but implicitly present) clock.
  </li>
</ul>

<h2>Task 2: Design a FSM to Recognize <code>0110</code></h2>
<p>
  In this task, you will design a FSM which will set a particular output <code><b>U</b></code> to <code>1</code> each time <code>0110</code> is encountered in a stream of inputs.
  Inputs are specified one at a time, and are represented by the variable <code><b>I</b></code>.
  To illustrate, consider the following example, which shows different values of <code><b>U</b></code> and <code>I</code> over time, where each cell is separated by a clock tick:
</p>
<table border="1">
  <tr>
    <td><code><b>I</b></code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
  </tr>
  <tr>
    <td><code><b>U</b></code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
    <td><code>0</code></td>
    <td><code>0</code></td>
    <td><code>1</code></td>
  </tr>
</table>

<p>
  In the above example, it may appear that the output of <code><b>U</b></code> is delayed with respect to input <code><b>I</b></code>.
  That is, when the <code>1</code> is <code>0110</code> is encountered, it's not until the <i>next</i> clock tick that <code><b>U</b></code> is set to <code>1</code>.
  This is actually expected behavior, as it reflects the fact that first the circuit reads <code>1</code>, and then it moves into a state that reports <code><b>U</b> = 1</code>.
</p>

<p>This overall task is separated into a series of questions, which will be submitted digitally via turnin as 3 files (sequence.txt, sequence1.jpg OR .pdf, and sequence2.jpg OR .pdf):
</p>
<ol>
  <li>
    <p>
      Draw the finite state machine corresponding to this task.
      Put this state diagram into a file named &ldquo;<code>sequence1.jpg</code>&rdquo; and put the circuit drawing into a file named &ldquo;<code>sequence2.jpg</code>&rdquo;. You may instead turn in sequence1 and sequence2 as scans in PDF format (instead of a JPEG picture).
    </p>
  </li>
  <li>
    <p>
      How many latches/flip-flops do you need to implement this state machine?
      (Hint: this corresponds to the number of bits necessary in order to encode all possible states uniquely.)
      If you are submitting this online, put this into a file named &ldquo;<code>sequence.txt</code>&rdquo;.
      This will be read by hand, so don't worry about the formatting (as long as it is clear and unambiguous).
    </p>
  </li>
  <li>
    <p>
      Draw a single truth table representing the behavior of the state machine.
      Be sure to label your states in binary.
      Your table should have inputs corresponding to whatever state you are in, along with <code><b>I</b></code>.
      The output corresponds to the next state to enter for a given input state, along with <code><b>U</b></code>.
      If you are submitting this online, add this to your &ldquo;<code>sequence.txt</code>&rdquo; file.
      This will be read by hand, so don't worry about the formatting (as long as it is clear and unambiguous).
    </p>
  </li>
  <li>
    <p>
      Using a Karnaugh map, determine the minimal sum-of-products formula corresponding to output <code>U</code>.
      Where appropriate, use <i>don't cares</i> in the map (note that there may be no appropriate uses of <i>don't cares</i>).
      If you are submitting this online, add this to your &ldquo;<code>sequence.txt</code>&rdquo; file.
      This will be read by hand, so don't worry about the formatting (as long as it is clear and unambiguous).
    </p>
  </li>
  <li>
    <p>
      Using a Karnaugh map, determine the minimal sum-of-products formula corresponding to the rightmost bit of the next state.
      Where appropriate, use <i>don't cares</i> in the map (note that there may be no appropriate uses of <i>don't cares</i>).
      If you are submitting this online, add this to your &ldquo;<code>sequence.txt</code>&rdquo; file.
      This will be read by hand, so don't worry about the formatting (as long as it is clear and unambiguous).
    </p>
  </li>
  <li>
    <p>
      Based on your findings, draw the FSM circuit using D-FFs and combinatorial logic. Make sure you CLEARLY label this diagram.
    </p>
  </li>
</ol>

<p>
  Pay particularly close attention to where transitions should go which move &ldquo;backwards&rdquo; in the FSM.
  That is, it is expected that you'll have transitions which go to previously observed states, and these transitions won't necessarily all return to the same state.
</p>
<p>
  Again, put all the information in the sequence.txt file, the picture (or scan) of the state diagram in sequence1.jpg (or sequence1.pdf, if scanning), and the picture of the circuit in sequence2.jpg (or sequence2.pdf, if scanning).
</p>

<h2>Turn in Everything Using <code>turnin</code></h2>
<p>
  <b>If you partnered with someone, record the email address they are using for the class in <code>partner.txt</code>.</b>
  For example, if your partner had the email address <a href="foo@bar.com">foo@bar.com</a>, then the contents of <code>partner.txt</code> should be the following (and <b>only</b> the following):
</p>
<pre>
Partner: foo@bar.com
</pre>
<p>If you did not partner with anyone, you do not need to (and should not) edit <code>partner.txt</code>.</p>

<p>Assuming you are in the <code>cs64/lab9</code> directory you created at the beginning, you can send in your answers <b>with the FSM images and answers</b> via the following command:</p>
<pre>
turnin lab9@cs64 display.jpg display.txt sequence1.jpg sequence2.jpg sequence.txt 
</pre>

<p>
  You may turn in the same assignment up to 100 times, which is useful if you are working on it incrementally.
  Note that only the last version you submitted will be graded.
</p>

<p>Even if you did not partner with anyone, you should still turn in <code>partner.txt</code>, which should not have been modified.</p>

<hr>
<blockquote>
  <p><font size="1">
  Copyright 2018, Ziad Matni, CS Dept, UC Santa Barbara. Adapted from work by Diana Franklin and Kyle Dewey. Permission to copy for non-commercial, non-profit, educational purposes granted, provided appropriate credit is given;  all other rights reserved.
  </font></p>
</blockquote>
