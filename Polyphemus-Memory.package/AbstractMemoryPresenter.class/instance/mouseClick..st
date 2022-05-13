events
mouseClick: evt
	| mainCanvas rtree point shapes camera |
	mainCanvas := evt canvas.
	rtree := mainCanvas propertyAt: #rtree ifAbsent: [ ^ self ].
	camera := mainCanvas propertyAt: #originalCamera.
	point := evt position.
	point := (camera fromPixelToSpace: evt position)+((camera canvas extent/2)/camera scale).

	shapes := rtree nodesWithPoint: point.
	mainCanvas removeInteractionIfPresent: RSMenuActivable.
	(shapes
		ifEmpty: [ camera canvas ]
		ifNotEmpty: [ shapes first ]) announce: evt.