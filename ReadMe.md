
This custom CounterTimer node can do both countdowns and countups

1.	Create a Scene or have one already.


2.	In your Scene, add a Label node.


3.	Add the custom CounterTimer node to your Scene.



4.	In the CounterTimer node's Inspector properties, set the following 2 properties.
	<pre white-space: pre-wrap;>
        Counter Type to either "countdown" or "countup", without the "".'.
        ex.     Counter Type countdown
        Counter Type determines the type of counter the CounterTimer node is. Either a countdown timer or a countup timer.
	
        Time Value to a value in minutes
        ex. Time Value 5
        Time Value is the total number of minutes to either countdown from or countup to, depending on which Counter Type you've chosen.
	
        See the CounterTimer demo settings to help you
	</pre>

	
	
5.   In your Scene's script, add or amend these 2 functions with these codes.
<pre>
         <code>
	   func _ready():
           $CounterTimer.start()
         </code>
	 <code>
	   func _process(delta):
           var time = str($CounterTimer.counter_time)
	       $Label.text = time  
	 </code>
</pre>
		   
		   
6.   The time variable will return the timer's time in a preformatted string as such...
	<pre>
	 10:59:999
	 
	 The first number before a : symbol is mInutes
	 ex.          10
	 The second number after the first : symbol is seconds
	 ex.         59
	 The third number after the second  : symbol is milliseconds
	 ex.         999
	</pre>
	   
	   
7.   You can not get the individual settings of Minutes, Seconds, or Milliseconds from the time variable in the example above. However, you can get the Minutes,   	Seconds, or Milliseconds using the individual properties of the CounterTimer node in the script of your Scene where the CounterTimer node is a child of.
<pre>
          <code>
	   var minutes
	   var seconds
	   var milliseconds
	   
	   func _process():
           minutes = $CounterTimer.minutes
           seconds = $CounterTimer.minutes
           milliseconds = $CounterTimer.minutes 
	  </code>
     Then you can use and/or format and display each as you want!
</ore>
	 
8. It's simple!
