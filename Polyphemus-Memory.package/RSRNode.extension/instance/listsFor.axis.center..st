*Polyphemus-Memory
listsFor: aCollection axis: aBoolean center: point
	| listA listB |
	listA := RSGroup new.
	listB := RSGroup new.
	aCollection do: [ :shape |
		aBoolean ifTrue: [ 
			(shape position x < point x 
				ifTrue: [ listA ]
				ifFalse: [ listB ]) add: shape
		]ifFalse: [ 
			(shape position y < point y
				ifTrue: [ listA ]
				ifFalse: [ listB ]) add: shape
		]
	].
	^ { listA. listB }