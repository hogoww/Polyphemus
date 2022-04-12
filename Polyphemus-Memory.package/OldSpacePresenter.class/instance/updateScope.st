showing
updateScope
	scopedOop := OrderedCollection new.
	interpreter objectMemory allOldSpaceObjectsDo: [ :anOop | scopedOop add: anOop ]