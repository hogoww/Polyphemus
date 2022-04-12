initialization
buildMemorySpace: aSpace

	| canvas iteratorSelector |
	canvas := RSCanvas new.
	iteratorSelector := aSpace = newSpace
		ifTrue: [ #allNewSpaceObjectsDo: ] 
		ifFalse: [ #allOldSpaceObjectsDo: ]. 
	interpreter objectMemory perform: iteratorSelector withArguments:{ 
		[ :o |
			canvas add: (self boxForOop: o)
			]}.

	RSGridLayout new
		gapSize: 1;
		on: canvas nodes.
		
	canvas addInteraction: RSCanvasController new.
	self setUpCanvas: aSpace canvas: canvas. 
	