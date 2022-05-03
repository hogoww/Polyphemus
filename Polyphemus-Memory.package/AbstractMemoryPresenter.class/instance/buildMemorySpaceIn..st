building
buildMemorySpaceIn: aCanvas
	| controller |
	aCanvas addAll: (scopedOop collect: [ :anOop | self boxForOop: anOop ]).
	
	RSGridLayout new
		gapSize: 1;
		on: aCanvas nodes.
	controller := RSCanvasController new.
	controller configuration
		maxScale: 100000;
		minScale: 0.00001.
	aCanvas addInteraction: controller.
	self contextMenuForCanvas: aCanvas.
	aCanvas signalUpdate.