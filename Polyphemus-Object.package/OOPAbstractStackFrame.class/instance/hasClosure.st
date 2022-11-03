querying
hasClosure

	flags hasClosure
		ifTrue: [ ^ self findClosure ]
		ifFalse: [ ^ nil ]