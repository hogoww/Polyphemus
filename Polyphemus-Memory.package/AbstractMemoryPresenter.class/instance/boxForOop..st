display
boxForOop: o
	| box |
	box := RSBox new.
	box model: o.
	box popup.
	box paint: (colorProvider colorForOop: o).
	self enableInspectOnClickForBox: box.
	self scallingForBox: box.
	self contextMenuForBox: box.
	^ box