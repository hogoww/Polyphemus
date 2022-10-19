tests
testCacheIsCleanupOnGarbageCollection

	| initialSize postGCSize |
	initialSize := FullyReifiedMemory cache size.
	reifiedMemory := nil.
	Smalltalk garbageCollect.
	FullyReifiedMemory cleanupCache.
	postGCSize := FullyReifiedMemory cache size.
	self assert: postGCSize < initialSize