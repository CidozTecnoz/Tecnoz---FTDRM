extends Node

onready var jogo = get_parent()
var vida
var produtor = true
var armazem = true
var defensor = true
var consumidor = true
var treinador = true
signal update

func _ready():
	# Ao inicializar, adiciona os valores das produções e capacidade 
	# Initialization here
	if produtor:
		var o_prod_ouro = 51
		var o_prod_comida = 51
		var o_prod_minerio = 51
		
		jogo.g_prod_ouro += o_prod_ouro 
		jogo.g_prod_comida += o_prod_comida 
		jogo.g_prod_minerio += o_prod_minerio
		
	if armazem:
		var o_cap_ouro = 500
		var o_cap_comida = 500
		var o_cap_minerio = 500
		
		jogo.g_cap_ouro += o_cap_ouro 
		jogo.g_cap_comida += o_cap_comida 
		jogo.g_cap_minerio += o_cap_minerio
		
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
