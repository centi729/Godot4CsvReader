extends Control

var csv_data = {}

func _ready():
	csv_parser()

func csv_parser():
	var file = FileAccess.open("res://data.csv", FileAccess.READ)
	
	while file.get_position() < file.get_length():
		var data = Array(file.get_csv_line())
		csv_data[data.size()] = data
	
	file.close()
