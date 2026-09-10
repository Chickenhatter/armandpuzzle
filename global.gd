extends Node
@onready var positions = [['a', 'x', 'b', 'c'],['d', 'e', 'f', 'g'],['h', 'i', 'j', 'k'],['l', 'm', 'n', 'o'],['p', 'q', 'r', 's']]
@onready var positions2 = [['a', 'x', 'b', 'c'],['d', 'e', 'f', 'g'],['h', 'i', 'j', 'k'],['l', 'm', 'n', 'o'],['p', 'q', 'r', 's']]
var trupos = [[Vector2(0.0,0.0), Vector2(100.0,0.0), Vector2(200.0,0.0), Vector2(300.0,0.0)],
[Vector2(0.0,100.0), Vector2(100.0,100.0), Vector2(200.0,100.0), Vector2(300.0,100.0)],
[Vector2(0.0,200.0), Vector2(100.0,200.0), Vector2(200.0,200.0), Vector2(300.0,200.0)],
[Vector2(0.0,300.0), Vector2(100.0,300.0), Vector2(200.0,300.0), Vector2(300.0,300.0)],
[Vector2(0.0,400.0), Vector2(100.0,400.0), Vector2(200.0,400.0), Vector2(300.0,400.0)],
]
var list = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','x']
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


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
	for row in positions2:
		for g in row:
			positions2[i][z] = list[numb]
			numb += 1
			z += 1
		i += 1
		z = 0
	positions = positions2.duplicate()
	print(positions)

func lookfor(a):
	for x in range(positions.size()):
		for y in range(positions[x].size()):
			if positions[x][y] == a:
				return trupos[x][y]
