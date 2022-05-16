*Polyphemus-Memory
rectangleAddAll: aCollection axis: aBoolean
	aCollection ifEmpty: [ ^ self error: 'should not' ].
	aCollection size = 1 ifTrue: [ 
		contents := aCollection first.
		rectangle := contents encompassingRectangle.
	] ifFalse: [ | center lists |
		rectangle := aCollection encompassingRectangle.
		center := rectangle floatCenter.
		lists := self listsFor: aCollection axis: aBoolean center: center.
		(lists anySatisfy: [ :list | list isEmpty ])
			ifTrue: [ lists := self listsFor: aCollection axis: aBoolean not center: center ].
		(lists anySatisfy: [:list | list isEmpty ])
			ifTrue: [ self error: 'listFor: error' ].
		left := self class new.
		left rectangleAddAll: lists first axis: aBoolean not.
		right := self class new.
		right rectangleAddAll: lists second axis: aBoolean not. 
	]