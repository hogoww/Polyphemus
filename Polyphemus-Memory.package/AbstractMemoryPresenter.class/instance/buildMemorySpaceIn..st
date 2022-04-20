initialization
buildMemorySpaceIn: canvas	
	| controller |
	canvas nodes ifNotEmpty: [ canvas nodes copy do: #remove ].
	canvas addAll: (scopedOop collect:[:anOop | self boxForOop: anOop ]).
	
	RSGridLayout new
		gapSize: 1;
		on: canvas nodes.
	controller := RSCanvasController new.
	controller configuration
		maxScale: 100000;
		minScale: 0.00001.
	canvas addInteraction: controller.
	self addMenuForCanvas: canvas.
	canvas signalUpdate.