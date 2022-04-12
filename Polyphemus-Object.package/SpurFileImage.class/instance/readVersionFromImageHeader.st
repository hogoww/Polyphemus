accessing
readVersionFromImageHeader
	| version |
	version := (memory copyFrom: 1 to: 4)
		           unsignedLongAt: 1
		           bigEndian: false.
	self flag: #ugly.
	version < 10000
		ifTrue: [  format := 32]
		ifFalse: [  format := 64].
	