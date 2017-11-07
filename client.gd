extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	get_tree().connect("connected_to_server", self, "_connected_ok")
	initialize()

func _connected_ok():
	print('cliente conectado')
	rpc_id(1, 'client_connected', get_tree().get_network_unique_id())

func initialize():
	var host = NetworkedMultiplayerENet.new()
	host.create_client('127.0.0.1', 65001)
	get_tree().set_network_peer(host)
	print("client inicializado")