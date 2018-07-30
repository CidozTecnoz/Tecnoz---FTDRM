extends Node
# capacidades dos recursos
var g_cap_ouro = 10000
var g_cap_minerio = 10000
var g_cap_agua = 10000
var g_cap_comida = 10000
var g_cap_aldeao =100
# valor de recursos disponíveis
export var g_atual_ouro = 1000
var g_atual_minerio = 1000
var g_atual_agua = 1000
var g_atual_comida = 1000
var g_atual_aldeao = 100
# valor de produção de cada recurso
var g_prod_ouro = 1000
var g_prod_minerio = 100
var g_prod_agua = 10
var g_prod_comida = 10
onready var predio = get_node("Prédio")

onready var Interface = get_node("RichTextLabel")

#if inputEvent continuar criação de instance com click do mouse


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	Interface.text = ("Ouro:\t"+String(g_atual_ouro)+"/"+String(g_cap_ouro))
	Interface.text += ("\nMinério:"+String(g_atual_minerio)+"/"+String(g_cap_minerio))
	Interface.text += ("\nComida: "+String(g_atual_comida)+"/"+String(g_cap_comida))
	Interface.text += ("\nÁgua:\t"+String(g_atual_agua)+"/"+String(g_cap_agua))
	pass

#estes eventos ocorrem a cada segundo, devido ao timer
func _on_Timer_timeout():
	_updateRecursos()
	print(String(g_atual_ouro)+"/"+String(g_cap_ouro))
	pass # replace with function body
	
func _updateRecursos():#esta função incrementa os recursos 
	if g_atual_ouro < g_cap_ouro:
		g_atual_ouro += g_prod_ouro
	if g_atual_ouro > g_cap_ouro: 
		g_atual_ouro = g_cap_ouro
	
	if g_atual_minerio < g_cap_minerio:
		g_atual_minerio += g_prod_minerio
	if g_atual_minerio > g_cap_minerio: 
		g_atual_minerio = g_cap_minerio
	
	if g_atual_comida < g_cap_comida:
		g_atual_comida += g_prod_comida
	if g_atual_comida > g_cap_comida:
		g_atual_comida = g_cap_comida
	
	if g_atual_agua < g_cap_agua:
		g_atual_agua += g_prod_agua
	if g_atual_agua > g_cap_agua:
		g_atual_agua = g_cap_agua
	pass
