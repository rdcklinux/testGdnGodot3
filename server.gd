extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	initialize()

func initialize():
	var host = NetworkedMultiplayerENet.new()
	host.create_server(65001, 10)
	get_tree().set_network_peer(host)
	print("server inicializado")
	
remote func client_connected(uid):
	print('cliente se ha contectado: ', uid)