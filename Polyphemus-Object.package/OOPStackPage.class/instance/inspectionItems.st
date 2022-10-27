inspection
inspectionItems

	| items |
	items := OrderedCollection new.
	stackFrames doWithIndex: [ :frame :anIndex | |separation|
		separation := '########### Frame ' , anIndex printString, ' ###########'.
		items add: separation -> separation.
		items addAll:  frame inspectionItems.
		 ].
	^ items