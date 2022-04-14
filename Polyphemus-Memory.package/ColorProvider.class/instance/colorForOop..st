coloring
colorForOop: anOop
	"Forwarders are hidden objects, so we need to check for forwarder before hidden."
	anOop isForwarderOop ifTrue: [ ^ self forwarderOopColor ].
	anOop isPinnedOop ifTrue: [ ^ self pinnedOopColor ].
	"(self memory isFreeOop: anOop) ifTrue: [ ^ self freeOopColor ]."
	anOop isHiddenOop ifTrue: [ ^ self specialOopColor ]. "
		[ interpreter objectMemory isHid ] -> [ self usedOopColor ]"
	
	anOop isContextOop ifTrue: [ ^ self contextOopColor ].
	anOop isClassOop ifTrue: [ ^ self classOopColor ].
	anOop isCompiledMethod ifTrue: [ ^ self compiledMethodOopColor ].
	^ self regularOopColor