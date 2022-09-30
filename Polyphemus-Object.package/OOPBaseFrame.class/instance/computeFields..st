initialization
computeFields: aCogStackPage

	nextFrame := memory interpreter findFrameAbove: baseFP inPage: aCogStackPage . 
	caller := memory interpreter stackPages longAt: baseFP + (1 * memory wordSize).
	method := memory interpreter stackPages longAt: baseFP + (2 * memory wordSize).
	flags := OOPStackFrameFlag newFor: self.
	context := memory interpreter stackPages longAt: baseFP + (4 * memory wordSize).
	receiver := memory interpreter stackPages longAt: baseFP + (5 * memory wordSize).
	operandStack := Stack new.