initialization
updateScope
	scopedOop := OrderedCollection new.
	interpreter objectMemory allNewSpaceObjectsDo: [ :anOop | scopedOop add: (self reifyOop: anOop) ]