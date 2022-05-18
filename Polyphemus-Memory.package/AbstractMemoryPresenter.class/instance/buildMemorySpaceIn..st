building
buildMemorySpaceIn: aCanvas
	| controller |
	self addElementsToCanvas: aCanvas.
	
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