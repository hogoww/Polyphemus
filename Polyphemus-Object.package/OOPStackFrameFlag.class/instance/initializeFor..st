initialization
initializeFor: anOOPBaseFrame

	| memory |
	memory := anOOPBaseFrame memory.
	tag := memory interpreter stackPages longAt:
		       anOOPBaseFrame framePointer - (3 * memory wordSize).
	isMarried := false