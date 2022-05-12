building
buildMemorySpaceIn: aCanvas
	| controller |
	aCanvas add: bitmap.
	self createBitmap.
	controller := RSCanvasController new.
	controller configuration
		maxScale: 5;
		minScale: 0.00001.
	
	aCanvas 
		addInteraction: controller;
		when: RSMouseClick send: #mouseClick: to: self.
	self contextMenuForCanvas: aCanvas.
	aCanvas signalUpdate.