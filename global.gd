extends Node
var positions = [['a', 'x', 'b', 'c'],['d', 'e', 'f', 'g'],['h', 'i', 'j', 'k'],['l', 'm', 'n', 'o'],['p', 'q', 'r', 's']]
var list = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','x']
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randoment()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var z = 0
var i = 0
var numb = 0
func randoment():
	numb = 0
	i = 0
	z = 0
	list.shuffle()
	for row in positions:
		for g in row:
			positions[i][z] = list[numb]
			numb += 1
			z += 1
		i += 1
		z = 0
	print(positions)
