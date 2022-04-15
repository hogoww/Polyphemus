building
buildMemorySpace: aSpace

	| canvas |
	canvas := RSCanvas new.
	
	scopedOop do: [ :anOop | canvas add: (self boxForOop: anOop) ].


	RSGridLayout new
		gapSize: 1;
		on: canvas nodes.		
	canvas addInteraction: RSCanvasController new.
	self addMenuForCanvas: canvas.	
	self setUpCanvas: canvas. 