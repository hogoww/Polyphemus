coloring
colorForOop: anOop
	"Forwarders are hidden objects, so we need to check for forwarder before hidden."
	(self memory isUnambiguouslyForwarder: anOop) ifTrue: [ ^ self forwarderOopColor ].
	(self memory isPinned: anOop) ifTrue: [ ^ self pinnedOopColor ].
	(self memory isFreeOop: anOop) ifTrue: [ ^ self freeOopColor ].
	(self memory isHiddenObj: anOop) ifTrue: [ ^ self specialOopColor ]. "
		[ interpreter objectMemory isHid ] -> [ self usedOopColor ]"
	
	(self memory isContext: anOop) ifTrue: [ ^ self contextOopColor ].
	(self memory isInClassTable: anOop) ifTrue: [ ^ self classOopColor ].
	(self memory isOopCompiledMethod: anOop) ifTrue: [ ^ self compiledMethodOopColor ].
	^ self regularOopColor