display
boxForOop: o
	| box |
	box := RSBox new.
	box model: o.
	self enableInspectOnClickForBox: box.
	self scalingForBox: box.
	self contextMenuForBox: box.
	^ box