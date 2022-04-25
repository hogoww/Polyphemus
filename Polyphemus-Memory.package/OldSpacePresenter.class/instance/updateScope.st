showing
updateScope
	scopedOop := OrderedCollection new.
	interpreter objectMemory allOldSpaceObjectsDo: [ :anOop | scopedOop add: (self reifyOop: anOop) ].
	interpreter objectMemory allFreeObjectsDo: [ :anOop | scopedOop add: (OOPFreeObject on: anOop image: image) ].
	scopedOop sort: [:a :b | a address <= b address ]