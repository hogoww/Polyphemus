building
enqueueOperation: aBlock
	| mainCanvas process |
	mainCanvas := bitmap canvas.
	mainCanvas propertyAt: #viewProcess ifPresent: [ :p | p terminate ].
	process := aBlock forkAt: Processor userBackgroundPriority.
	mainCanvas propertyAt: #viewProcess put: process.