visiting
visitOOPAbstractObject: anOopObject
	(toIgnore includes: anOopObject) ifTrue: [ ^ self ].
	super visitOOPAbstractObject: anOopObject.