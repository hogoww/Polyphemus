building
queueUpdateView: evt
	| mainCanvas scale firstScale |
	mainCanvas := bitmap canvas.
	scale := evt camera scale.
	#queueUpdateView: traceCr.
	mainCanvas identityHash traceCr.
	firstScale := mainCanvas propertyAt: #firstScale ifAbsentPut: [ scale ].
	mainCanvas propertyAt: #viewport ifPresent: [ :view | 
		view remove.
		mainCanvas removeKey: #viewport.
		mainCanvas signalUpdate ].
	scale > firstScale ifFalse: [ ^ self ].
	self enqueueOperation: [ self updateViewPort: evt ].