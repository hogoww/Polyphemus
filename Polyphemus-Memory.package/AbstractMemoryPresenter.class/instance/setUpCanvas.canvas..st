updating
setUpCanvas: aSpace canvas: canvas

	aSpace currentCanvas
		ifNotNil: [ :aCanvas | 
			| widget |
			widget := aCanvas morph.
			widget canvas: canvas.
			canvas extent: widget extent.
			canvas signalUpdate
			 ].
	aSpace canvas: canvas