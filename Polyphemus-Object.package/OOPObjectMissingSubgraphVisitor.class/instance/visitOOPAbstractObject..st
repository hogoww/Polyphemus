visiting
visitOOPAbstractObject: anOopObject
	(toIgnore includes: anOopObject) ifTrue: [ ^ self ].
	toIgnore add: anOopObject.
	super visitOOPAbstractObject: anOopObject.