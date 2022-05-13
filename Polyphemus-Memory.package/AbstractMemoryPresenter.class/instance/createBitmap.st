building
createBitmap
	| newCanvas mainCanvas rectangle |
	mainCanvas := bitmap canvas.
	bitmap form: self newLoadingForm.
	mainCanvas signalUpdate.
	newCanvas := RSCanvas new.
	nodes := self createNodes.
	newCanvas addAll: nodes.
	
	mainCanvas
		removeKey: #firstScale;
		propertyAt: #rtree put: (RSPolyphemusRTree withAll: nodes).
	
	rectangle := newCanvas encompassingRectangle.
	mainCanvas controllerInteraction configuration maxScale: (rectangle extent * 0.01) max.
	newCanvas camera
		zoomToFit: mainCanvas extent
		rectangle: rectangle.
	newCanvas extent: rectangle extent * newCanvas camera scale.
	
	bitmap form: newCanvas asForm.
	self contextMenuForCanvas: newCanvas.
	mainCanvas propertyAt: #originalCamera put: newCanvas camera.
	mainCanvas
		when: RSScaleChangedEvent send: #queueUpdateView: to: self;
		when: RSPositionChangedEvent send: #queueUpdateView: to: self;
		removeKey: #encompassingRectangle;
		zoomToFit;
		signalUpdate.