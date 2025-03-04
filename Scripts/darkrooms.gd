extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	
	if area.name == "hitbox" :
		area.get_parent().get_node("light").texture_scale = 4
		self.get_parent().get_parent().get_node("CanvasModulate").color = Color(0, 0, 0, 1)
		self.get_node("CollisionShape2D").get_node("PointLight2D").visible = false
		
		self.get_parent().get_parent().get_node("CanvasModulate")
		
	pass # Replace with function body.


func _on_area_exited(area: Area2D) -> void:
	
	if area.name == "hitbox" :
		area.get_parent().get_node("light").texture_scale = 50
		self.get_parent().get_parent().get_node("CanvasModulate").color = Color(0.85, 0.85, 0.85, 1)
		self.get_node("CollisionShape2D").get_node("PointLight2D").visible = true
		
		
	pass # Replace with function body.
