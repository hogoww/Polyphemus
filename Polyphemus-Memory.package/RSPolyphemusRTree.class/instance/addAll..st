adding
addAll: aCollection
	aCollection ifEmpty: [ ^ self ].
	root := RSRNode new.
	root rectangleAddAll: aCollection axis: true.