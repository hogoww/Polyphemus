building
addElementsToCanvas: aCanvas
	aCanvas addAll: (scopedOop collect: [ :anOop | self boxForOop: anOop ]).