showing
boxForCluster: aCluster
	| box |
	box := RSBox new.
	box model: aCluster.
	box paint: (colorProvider colorForOop: aCluster anyOne).
	self enableInspectOnClickForBox: box.
	scaling value: box.
	self contextMenuForBox: box.
	^ box