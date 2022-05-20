showing
addElementsToCanvas: aCanvas
	| clusters |
	clusters := self clusterScopeByColor.
	aCanvas addAll: (clusters collect: [ :aCluster | self boxForCluster: aCluster ]).