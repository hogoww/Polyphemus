testing
value
	^ (address class includesBehavior: SpurObject) 
		ifTrue: [ address address ]
		ifFalse: [ address ]