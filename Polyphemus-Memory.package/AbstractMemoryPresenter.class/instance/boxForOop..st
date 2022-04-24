building
boxForOop: o
	| box |
	box := RSBox new.
	box model: o.
	box paint: (colorProvider colorForOop: o).
	self enableInspectOnClickForBox: box.
	scaling value: box.
	self contextMenuForBox: box.
	^ box