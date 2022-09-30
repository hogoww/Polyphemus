build
buildObject
	self checkFormat.
	oopIsClass ifTrue: [ self checkClassAttributes ].
	^ self oopIsOld
		ifTrue:[ self allocateInOldSpace ]
		ifFalse: [ self allocateInNewSpace ].
	