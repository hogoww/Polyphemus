events
mouseClick: evt
	| mainCanvas rtree point shapes camera |
	mainCanvas := evt canvas.
	rtree := mainCanvas propertyAt: #rtree ifAbsent: [ ^ self ].
	camera := mainCanvas propertyAt: #originalCamera.
	point := evt position.
	point := (camera fromPixelToSpace: evt position)+((camera canvas extent/2)/camera scale).

	shapes := rtree nodesWithPoint: point.
	shapes size traceCr.
	shapes size = 1 ifFalse: [  ^ self ].
	
	"shapes first announce: evt class new."