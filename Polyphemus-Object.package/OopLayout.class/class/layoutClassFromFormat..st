instance creation
layoutClassFromFormat: objFormat
	objFormat = 0
		ifTrue: [ ^ OopEmptyLayout ].
	objFormat = 1
		ifTrue: [ ^ OopNonIndexableLayout ].
	objFormat = 2
		ifTrue: [ ^ OopIndexableWithoutSlotLayout ].	
	objFormat = 3
		ifTrue: [ ^ OopIndexableWithSlotLayout ].

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
		ifTrue: [ ^ OopCompiledMethodLayout ].
		
	^ self error: 'Unused or invalid format.'
	