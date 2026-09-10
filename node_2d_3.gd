extends Node2D
var a = true
var holding = false
var heald = ''
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
var xal = 0
var yal = 0



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if a == true:
		print(Global.positions[xal][yal])
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
				print('a')
				if Global.positions[xal][yal] != 'x':
					print('a')
					holding = true
					heald = Global.positions[xal][yal]
					print(heald)
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
				holding = false
				Global.positions[xal][yal] = heald
				heald = ''
	
	if heald == 'a':
		$"../Node2D2/row1/b1".global_position = $Node2D.global_position
	if heald == 'b':
		$"../Node2D2/row1/b2".global_position = $Node2D.global_position
	if heald == 'c':
		$"../Node2D2/row1/b3".global_position = $Node2D.global_position


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
