accessing-literals
numberOfLiterals
	"Alternative code extracted from the simulator
	self methodHeader asInteger bitAnd: 16r7FFF"
	^ memory literalCountOf: address