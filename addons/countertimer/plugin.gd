tool
extends EditorPlugin

var countertimer

func _enter_tree():
	add_custom_type("CounterTimer", "Timer", preload("res://addons/countertimer/CounterTimer.gd"), preload("res://addons/countertimer/countertimer_icon.png"))




func _exit_tree():
	remove_custom_type("CounterTimer")
