updating
update
	self isFrozen ifTrue: [ FrozenMemoryError signal ].
	^ self snapshotMemory