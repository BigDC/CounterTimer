extends Node

func _ready():
	$CounterTimer.start()

func _process(delta):
	var time = str($CounterTimer.counter_time)
	$MyTime.text = time
