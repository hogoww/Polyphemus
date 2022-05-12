building
updateView: evt

	| mainCanvas scale position process firstScale |
	mainCanvas := bitmap canvas.
	scale := evt camera scale.
	position := evt camera position.
	firstScale := mainCanvas propertyAt: #firstScale ifAbsentPut: [ scale ].
	mainCanvas propertyAt: #viewport ifPresent: [ :view | 
		view remove.
		mainCanvas removeKey: #viewport ].
	scale > firstScale ifFalse: [ 
		^ self ].
	mainCanvas propertyAt: #viewProcess ifPresent: [ :p | p terminate ].
	process := [ self updateViewPort: evt ] forkAt: Processor userBackgroundPriority.
	mainCanvas propertyAt: #viewProcess put: process.