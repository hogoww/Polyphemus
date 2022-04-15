updating
setUpCanvas: canvas

	memorySpace currentCanvas
		ifNotNil: [ :aCanvas | 
			| widget |
			widget := aCanvas morph.
			widget canvas: canvas.
			canvas extent: widget extent.
			canvas signalUpdate
			 ].
	memorySpace canvas: canvas