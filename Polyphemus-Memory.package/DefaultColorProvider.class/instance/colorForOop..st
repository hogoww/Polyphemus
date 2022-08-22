coloring
colorForOop: anOop

	"Forwarders are hidden objects, so we need to check for forwarder before hidden."
	anOop isAbnormalOop ifTrue: [ ^ self abnormalOopColor ].
	anOop isForwarderOop ifTrue: [ ^ self forwarderOopColor ].
	anOop isPinnedOop ifTrue: [ ^ self pinnedOopColor ].
	anOop isCompiledMethodOop ifTrue: [ ^ self compiledMethodOopColor ].
	anOop isContextOop ifTrue: [ ^ self contextOopColor ].
	anOop isTraitOop ifTrue: [ ^ self traitOopColor  ].
	anOop isClassTraitOop ifTrue: [ ^ self classTraitOopColor  ].
	anOop isClassSideOop ifTrue: [ ^ self metaclassOopColor ].
	anOop isClassOop ifTrue: [ ^ self classOopColor ].
	anOop isHiddenOop ifTrue: [ ^ self specialOopColor ].
	anOop isFreeOop ifTrue: [ ^self freeOopColor ].
	^ self regularOopColor