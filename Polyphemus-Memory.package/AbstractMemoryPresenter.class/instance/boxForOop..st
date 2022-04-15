display
boxForOop: o
	| box |
	box := RSBox new.
	box model: o.
	box popup.
	box paint: (colorProvider colorForOop: o).
	box when: RSMouseClick do:[ :rso | rso shape model inspect ].
	box when: RSMouseClick do: [ self selectOop: box model ].
	self scallingForBox: box.
	^ box