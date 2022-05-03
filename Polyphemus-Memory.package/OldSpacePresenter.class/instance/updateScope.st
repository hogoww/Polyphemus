showing
updateScope
	scopedOop := OrderedCollection new.
	interpreter objectMemory allOldSpaceObjectsDo: [ :anOop | scopedOop add: (self reifyOop: anOop) ].
	scopedOop sort: [:a :b | a address <= b address ]