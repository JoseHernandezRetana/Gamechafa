extends Timer

var contador = 0




func _on_timeout():
	contador += 1
	print("segundos transcurridos: ", contador)
	pass # Replace with function body.
