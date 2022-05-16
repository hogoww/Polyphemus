building
updateViewPort: evt
	| viewport newCanvas mainCanvas ext camera scale rtree |
	mainCanvas := bitmap canvas.
	viewport := mainCanvas
		propertyAt: #viewport
		ifAbsentPut: [ RSBitmap new ].
	camera := mainCanvas propertyAt: #originalCamera.
	camera ifNil: [ ^ self ].
	rtree := mainCanvas propertyAt: #rtree.
	newCanvas := RSCanvas new.
	
	ext := mainCanvas extent.
	scale := mainCanvas camera scale * camera scale.
	
	newCanvas camera
		scale: scale;
		position: (mainCanvas camera position * (1 /camera scale))+camera position.
	newCanvas extent: mainCanvas extent.
	newCanvas addAll: (rtree nodesIntersetcsRectangle: newCanvas visibleRectangle).
	
	viewport form: newCanvas asForm.
	viewport 
		isFixed: true;
		position: ext / 2.
	mainCanvas add: viewport.
	viewport pushBack.
	mainCanvas signalUpdate.