display
boxForOop: o
	| box |
	box := RSBox new.
	box when: RSMouseClick do:[ :rso | objectInspector inspectOop: rso shape model ].
	box model: o.
	box popup.
	box paint: (colorProvider colorForOop: o).
	box when: RSMouseClick do: [ self selectOop: box model ].
	(SpurObject on: o image: (SpurSimulatorImage onSpurSimulator:interpreter objectMemory) ) isForwarder ifTrue: [ ^ box ].
	box width: (interpreter objectMemory byteSizeOf: o) // interpreter objectMemory wordSize.
	^ box