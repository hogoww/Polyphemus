class initialization
initialize
	"similarly to resources, we force the creation an initialization to avoid risking to timeing out a test case"
	self = ImageInterpretedSetup ifFalse:[
		self currentImage 
		].