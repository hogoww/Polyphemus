tests
testCacheIsCleanupOnGarbageCollection

	| initialSize postGCSize |
	self newMemorySnapshot.
	initialSize := PreReifiedMemory cache size.
	reifiedMemory := nil.
	Smalltalk garbageCollect.
	PreReifiedMemory cleanupCache.
	postGCSize := PreReifiedMemory cache size.
	self assert: postGCSize < initialSize