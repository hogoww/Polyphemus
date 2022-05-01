showing
clusterScopeByColor
	| currentColor res currentCollection |
	scopedOop ifEmpty: [ ^ OrderedCollection new ].
	currentColor := colorProvider colorForOop: scopedOop first.
	res := OrderedCollection new.
	currentCollection := OrderedCollection new.
	scopedOop do: [ :anOop |
		| oopColor |
		oopColor := colorProvider colorForOop: anOop.
		oopColor = currentColor
			ifFalse: [
				res add: currentCollection.
				currentCollection := OrderedCollection new 
				].
			currentCollection add: anOop
		].
		res add: currentCollection.
		^ res