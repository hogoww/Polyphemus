building
createBitmap
	
	[ | newCanvas mainCanvas rectangle |
		newCanvas := RSCanvas new.
		nodes := self createNodes.
		newCanvas addAll: nodes.
		
		mainCanvas := bitmap canvas.
		mainCanvas removeKey: #firstScale.
		mainCanvas propertyAt: #rtree put: (RSPolyphemusRTree withAll: nodes).
		rectangle := newCanvas encompassingRectangle.
		mainCanvas controllerInteraction configuration maxScale: (rectangle extent * 0.01) max.
		newCanvas camera
			zoomToFit: mainCanvas extent
			rectangle: rectangle.
		newCanvas extent: rectangle extent * newCanvas camera scale.
		bitmap form: newCanvas asForm.
		mainCanvas propertyAt: #originalCamera put: newCanvas camera.
		mainCanvas
			when: RSScaleChangedEvent send: #updateView: to: self;
			when: RSPositionChangedEvent send: #updateView: to: self;
			removeKey: #encompassingRectangle;
			zoomToFit;
			signalUpdate.
	 ] forkAt: Processor userBackgroundPriority