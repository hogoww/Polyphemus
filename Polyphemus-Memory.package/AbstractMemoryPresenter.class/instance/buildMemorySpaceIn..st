building
buildMemorySpaceIn: aCanvas
	| controller |
	aCanvas add: bitmap.
	self queueNewBitmap.
	controller := RSCanvasController new.
	controller configuration
		maxScale: 5;
		minScale: 0.00001.
	aCanvas 
		addInteraction: controller;
		when: RSExtentChangedEvent send: #queueNewBitmap to: self;
		when: RSMouseClick send: #mouseClick: to: self.
	
	aCanvas signalUpdate.