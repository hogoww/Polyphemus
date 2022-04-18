description
selectionDepthFor: anOop
	selection doWithIndex: [ :aCollection :iterator |
		(aCollection includes: anOop) ifTrue: [ ^ iterator ]
		 ].
	^ 0