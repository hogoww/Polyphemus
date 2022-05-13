private
formatResult
	| res |
	subgraph values ifEmpty:[ ^ OrderedCollection new ].
	
	res := OrderedCollection new.
	subgraph values max timesRepeat: [ res add: OrderedCollection new ].
	(subgraph associationsDo: [ :a |
			(res at: a value) add: a key
		]).
	^ res 