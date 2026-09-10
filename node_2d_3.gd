extends Node2D
var a = true
var holding = false
var heald = ''
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	newpos()
var xal = 0
var yal = 0



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if a == true:
		
		if Input.is_action_just_pressed('ui_w'):
			lerpup()
		if Input.is_action_just_pressed('ui_s'):
			lerpdown()
		if Input.is_action_just_pressed('ui_a'):
			lerpleft()
		if Input.is_action_just_pressed('ui_d'):
			lerpright()
		if holding == false:
			if Input.is_action_just_pressed('ui_accept'):
				if $"../Node2D".positions[xal][yal] != 'x':
					holding = true
					heald = $"../Node2D".positions[xal][yal]
					$"../Node2D".positions[xal][yal] = 'x'
		else:
			#if Input.is_action_just_pressed('ui_w'):
				#if Global.positions[xal][yal-1] == 'x':
					#Global.positions[xal][yal] = 'x'
					#Global.positions[xal][yal-1] = '0'
					#lerpup()
			#if Input.is_action_just_pressed('ui_s'):
				#if Global.positions[xal][yal+1] == 'x':
					#Global.positions[xal][yal] = 'x'
					#Global.positions[xal][yal+1] = '0'
					#lerpdown()
			#if Input.is_action_just_pressed('ui_a'):
				#if Global.positions[xal+1][yal] == 'x':
					#Global.positions[xal][yal] = 'x'
					#Global.positions[xal+1][yal] = '0'
					#lerpleft()
			#if Input.is_action_just_pressed('ui_d'):
				#if Global.positions[xal-1][yal] == 'x':
					#Global.positions[xal][yal] = 'x'
					#Global.positions[xal-1][yal] = '0'
					#lerpup()
			#
			if Input.is_action_just_pressed('ui_accept'):
				if $"../Node2D".positions[xal][yal] == 'x':
					holding = false
					$"../Node2D".positions[xal][yal] = heald
					heald = ''
	
	carrying()
	
	if $"../Node2D".positions == [['a', 'b', 'c', 'x'],['d', 'e', 'f', 'g'],['h', 'i', 'j', 'k'],['l', 'm', 'n', 'o'],['p', 'q', 'r', 's']]:
		await get_tree().create_timer(2.0).timeout
		newpos()


func lerpup():
	if xal > 0:
		xal -= 1
		a = false
		var tween = create_tween()
		tween.tween_property($Node2D, "position:y", ($Node2D.position.y - 100), 1.0)
		await get_tree().create_timer(1).timeout
		a = true

func lerpdown():
	if xal < 4:
		xal += 1
		a = false
		var tween = create_tween()
		tween.tween_property($Node2D, "position:y", ($Node2D.position.y + 100), 1.0)
		await get_tree().create_timer(1).timeout
		a = true

func lerpleft():
	if yal > 0:
		yal -= 1
		a = false
		var tween = create_tween()
		tween.tween_property($Node2D, "position:x", ($Node2D.position.x - 100), 1.0)
		await get_tree().create_timer(1).timeout
		a = true

func lerpright():
	if yal < 3:
		yal += 1
		a = false
		var tween = create_tween()
		tween.tween_property($Node2D, "position:x", ($Node2D.position.x + 100), 1.0)
		await get_tree().create_timer(1).timeout
		a = true

func carrying():
	carryingfirst()
	carryingsecond()
	carryingthird()
	carryingfourth()
	carryingfifth()

func carryingfirst():
	if heald == 'a':
		$"../Node2D2/row1/b1".global_position = $Node2D.global_position
	if heald == 'b':
		$"../Node2D2/row1/b2".global_position = $Node2D.global_position
	if heald == 'c':
		$"../Node2D2/row1/b3".global_position = $Node2D.global_position

func carryingsecond():
	if heald == 'd':
		$"../Node2D2/row2/b1".global_position = $Node2D.global_position
	if heald == 'e':
		$"../Node2D2/row2/b2".global_position = $Node2D.global_position
	if heald == 'f':
		$"../Node2D2/row2/b3".global_position = $Node2D.global_position
	if heald == 'g':
		$"../Node2D2/row2/b4".global_position = $Node2D.global_position

func carryingthird():
	if heald == 'h':
		$"../Node2D2/row3/b1".global_position = $Node2D.global_position
	if heald == 'i':
		$"../Node2D2/row3/b2".global_position = $Node2D.global_position
	if heald == 'j':
		$"../Node2D2/row3/b3".global_position = $Node2D.global_position
	if heald == 'k':
		$"../Node2D2/row3/b4".global_position = $Node2D.global_position

func carryingfourth():
	if heald == 'l':
		$"../Node2D2/row4/b1".global_position = $Node2D.global_position
	if heald == 'm':
		$"../Node2D2/row4/b2".global_position = $Node2D.global_position
	if heald == 'n':
		$"../Node2D2/row4/b3".global_position = $Node2D.global_position
	if heald == 'o':
		$"../Node2D2/row4/b4".global_position = $Node2D.global_position

func carryingfifth():
	if heald == 'p':
		$"../Node2D2/row5/b1".global_position = $Node2D.global_position
	if heald == 'q':
		$"../Node2D2/row5/b2".global_position = $Node2D.global_position
	if heald == 'r':
		$"../Node2D2/row5/b3".global_position = $Node2D.global_position
	if heald == 's':
		$"../Node2D2/row5/b4".global_position = $Node2D.global_position

@onready var dictil = {'a':$"../Node2D2/row1/b1",'b':$"../Node2D2/row1/b2",'c':$"../Node2D2/row1/b3",
'd':$"../Node2D2/row2/b1",'e':$"../Node2D2/row2/b2",'f':$"../Node2D2/row2/b3",'g':$"../Node2D2/row2/b4",
'h':$"../Node2D2/row3/b1",'i':$"../Node2D2/row3/b2",'j':$"../Node2D2/row3/b3",'k':$"../Node2D2/row3/b4",
'l':$"../Node2D2/row4/b1",'m':$"../Node2D2/row4/b2",'n':$"../Node2D2/row4/b3",'o':$"../Node2D2/row4/b4",
'p':$"../Node2D2/row5/b1",'q':$"../Node2D2/row5/b2",'r':$"../Node2D2/row5/b3",'s':$"../Node2D2/row5/b4",}

func newpos():
	$"../Node2D".randoment()
	for i in range(19):
		var lookfor = dictil.keys()[i]
		var place = $"../Node2D".lookfor(lookfor)
		var the_node = dictil.values()[i]
		var tween = create_tween()
		tween.tween_property(the_node, "global_position", place, 1.0)
		
