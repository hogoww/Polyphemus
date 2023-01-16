printing
oopFormatName
	"except a few exceptions (format = 9+, all other have a chance to have every format)"
	^ String streamContents: [ :s |
		self isEmptyLayout ifTrue: [ s << 'Empty' ].
		self isNonIndexableLayout ifTrue: [ s << 'Non Indexable' ]. 
		self isIndexableLayoutWithSlot ifTrue: [ s << 'Indexable with Slots' ]. 
		self isIndexableLayoutWithoutSlot ifTrue: [ s << 'Indexable without Slots' ].
		
		"missing weaks/ephemeron, we don't have any here."
		
		s << ' (' << self oopFormat printString << ')'
		]