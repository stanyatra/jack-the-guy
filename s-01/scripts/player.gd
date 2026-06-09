extends CharacterBody2D



var SPEED = 100.0
var JUMP_VELOCITY = -210.0

@onready var player_sprite_2d: AnimatedSprite2D = $PlayerSprite2D

var is_shoe_collected=false;



func activate_shoe_collected():
	is_shoe_collected=true
	SPEED =100
	JUMP_VELOCITY=-300
	await get_tree().create_timer(15).timeout
	is_shoe_collected=false;
	SPEED=100
	JUMP_VELOCITY=-210




var is_powered_up=false;

func activate_power_up():
	is_powered_up=true
	await get_tree().create_timer(5).timeout
	is_powered_up=false



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	#Get direction:-1, 0, 1
	var direction := Input.get_axis("move_left", "move_right")
	
	#Flip the sprite
	if direction>0:
		player_sprite_2d.flip_h=false;
	elif direction<0:
		player_sprite_2d.flip_h=true;
	
	
	
	if is_powered_up==true:
		if is_on_floor():
			if direction==0:
				player_sprite_2d.play("poweridle");
			else:
				player_sprite_2d.play("powerrun");
		else:
			player_sprite_2d.play("powerjump");
			
			
	elif is_shoe_collected==true:
		if is_on_floor():
			if direction==0:
				player_sprite_2d.play("shoeidle");
			else:
				player_sprite_2d.play("shoerun");
		else:
			player_sprite_2d.play("shoejump");
	else:
		if is_on_floor():
			if direction==0:
				player_sprite_2d.play("idle");
			else:
				player_sprite_2d.play("run");
		else:
			player_sprite_2d.play("jump");
			
	
	
	#Applies movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
