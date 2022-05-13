building
createNodes
	| shapes |
	shapes := scopedOop collect: [ :anOop | self boxForOop: anOop ] as: RSGroup.
	RSGridLayout new
		gapSize: 1;
		on: shapes.
	^ shapes