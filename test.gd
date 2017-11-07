extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var gdn = GDNative.new()

func _ready():
	gdn.initialize()
	gdn.terminate()