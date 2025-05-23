extends CharacterBody2D

const GRAVITY = 500
const SPEED = 200
const JUMP_VELOCITY = -400

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	# Applying gravity
	if not is_on_floor():
		#fall
		velocity.y += GRAVITY * delta
	else:
		#reset velocity on the floo
		velocity.y = 0
	
	#jumping
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
	
	# horizontal movement
	if Input.is_action_just_pressed("ui_right"):
		velocity.x += SPEED
	
	if Input.is_action_just_released("ui_right"):
		velocity.x = 0
	
	if Input.is_action_just_pressed("ui_left"):
		velocity.x -= SPEED
	
	if Input.is_action_just_released("ui_left"):
		velocity.x = 0
	
	
	move_and_slide()
	
	
