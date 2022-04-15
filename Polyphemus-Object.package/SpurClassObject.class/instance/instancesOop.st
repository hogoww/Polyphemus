query
instancesOop
	| res | 
	res := OrderedCollection new.
	 memory allObjectsDo: [ :anOop|
		(memory classForClassTag: (memory fetchClassTagOf: anOop)) = address ifTrue: [ res add: anOop ] ].
	^ res