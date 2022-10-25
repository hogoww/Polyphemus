accessing
imagePath
	^ imagePath ifNil: [ self class pathToCandle64Bit ]