printing
objectPrintOn: aStream
	aStream nextPutAll: 'a ', (self object basicClass asString)