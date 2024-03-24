extends Node2D

class_name CharacterState

enum state {
	normal,
	death,
	poison,
	burn
}

var feeling: state = state.normal
