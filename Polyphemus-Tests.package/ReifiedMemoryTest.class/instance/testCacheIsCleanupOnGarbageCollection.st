tests
testCacheIsCleanupOnGarbageCollection

	| initialSize postGCSize |
	self newMemorySnapshot.
	initialSize := ReifiedMemory cache size.
	reifiedMemory := nil.
	Smalltalk garbageCollect.
	ReifiedMemory cleanupCache.
	postGCSize := ReifiedMemory cache size.
	self assert: postGCSize < initialSize