coloring
colorForOop: anOop
	"Forwarders are hidden objects, so we need to check for forwarder before hidden."
	"Compiled method in the method builder have bad indexes. They have to be checked before hidden for now"
	anOop isForwarderOop ifTrue: [ ^ self forwarderOopColor ].
	anOop isPinnedOop ifTrue: [ ^ self pinnedOopColor ].
	"(self memory isFreeOop: anOop) ifTrue: [ ^ self freeOopColor ]."
	anOop isCompiledMethodOop ifTrue: [ ^ self compiledMethodOopColor ]. "
		[ interpreter objectMemory isHid ] -> [ self usedOopColor ]"
	anOop isContextOop ifTrue: [ ^ self contextOopColor ].
	anOop isMetaclassOop ifTrue: [ ^ self metaclassOopColor ].
	anOop isClassOop ifTrue: [ ^ self classOopColor ].
	anOop isHiddenOop ifTrue: [ ^ self specialOopColor ].
	anOop isFreeOop ifTrue: [ ^self freeOopColor  ].
	^ self regularOopColor