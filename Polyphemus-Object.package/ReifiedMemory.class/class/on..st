instance creation
on: aMemory
	"we always clean up on creation"
	self cleanupCache.
	^ MemoryCache detect: [ :aReifiedMemory | aReifiedMemory simulator = aMemory ]
		ifFound:[ :aReifiedMemory | aReifiedMemory ]
		ifNone: [ | newMemory |
			newMemory := self new
				memory: aMemory;
				snapshotMemory;
				yourself.
			MemoryCache add: newMemory.
			newMemory ]