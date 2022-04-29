instance creation
layoutClassFromFormat: objFormat
	objFormat = 0
		ifTrue: [ ^ OopRegularLayout ].
	objFormat = 1
		ifTrue: [ ^ OopRegularLayout ].
	objFormat = 2
		ifTrue: [ ^ OopRegularLayout ].	
	objFormat = 3
		ifTrue: [ ^ OopRegularLayout ].

"	objFormat = 4
		ifTrue: [ ^SpurVariableWithInstanceVariablesLayout ].
	objFormat = 5
		ifTrue: [ ^SpurVariableWithInstanceVariablesLayout ].	
	objFormat = 7
		ifTrue: [ ^SpurImmediateLayout].
"
	(objFormat between: 8 and: 24)
		ifTrue: [ ^ SpurByteLayout ].
	(objFormat between: 24 and: 31)
		ifTrue: [ ^ OopRegularLayout ].
		
	^ self error: 'Unused or invalid format.'
	