showing
buildMemorySpaceIn: aCanvas
	| clusters controller |
	clusters := self clusterScopeByColor.
	aCanvas addAll: (clusters collect: [ :aCluster | self boxForCluster: aCluster ]).
		
	RSGridLayout new
		gapSize: 1;
		on: aCanvas nodes.
	controller := RSCanvasController new.
	controller configuration
		maxScale: 100000;
		minScale: 0.00001.
	aCanvas addInteraction: controller.
	self contextMenuForCanvas: aCanvas.
	aCanvas signalUpdate.