accessing
imagePath
	^ imagePath ifNil: [ PharoImageAccessor pathToCandle64Bit ]