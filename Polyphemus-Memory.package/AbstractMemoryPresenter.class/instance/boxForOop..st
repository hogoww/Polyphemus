display
boxForOop: o
	| box |
	box := RSBox new.
	box model: o.
	box popup.
	box paint: (colorProvider colorForOop: o).
	box when: RSMouseClick do:[ :rso | rso shape model inspect ].
	box when: RSMouseClick do: [ self selectOop: box model ].
	"(SpurObject on: o image: (SpurSimulatorImage onSpurSimulator:interpreter objectMemory) ) isForwarder ifTrue: [ ^ box ].
	box size: (interpreter objectMemory byteSizeOf: o) // interpreter objectMemory wordSize."
	^ box