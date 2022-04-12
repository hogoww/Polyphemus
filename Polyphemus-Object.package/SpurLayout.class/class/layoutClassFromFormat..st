as yet unclassified
layoutClassFromFormat: objFormat
	(objFormat = 0)
		ifTrue: [ ^ SpurEmptyLayout ].
	(objFormat = 1)
		ifTrue: [ ^ SpurFixedLayout ].
	(objFormat = 2) 
		ifTrue: [ ^ SpurVariableLayout ].	
	(objFormat = 3)
		ifTrue: [ ^SpurVariableWithInstanceVariablesLayout ].
	(objFormat = 4)
		ifTrue: [ ^SpurVariableWithInstanceVariablesLayout ].
	(objFormat = 5)
		ifTrue: [ ^SpurVariableWithInstanceVariablesLayout ].	
			
	(objFormat = 7)
		ifTrue: [ ^SpurImmediateLayout].

	(objFormat < 24 and: [ objFormat > 8 ])
		ifTrue: [ ^ SpurByteLayout ].
	(objFormat < 32 and: [ objFormat > 23 ])
		ifTrue: [ ^ SpurCompiledMethodLayout ].
		
	^ self error: 'Unused or invalid format.'
	