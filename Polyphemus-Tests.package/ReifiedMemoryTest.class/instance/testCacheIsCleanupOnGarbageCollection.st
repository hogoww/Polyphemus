tests
testCacheIsCleanupOnGarbageCollection

	| initialSize postGCSize |
	initialSize := PreReifiedMemory cache size.
	reifiedMemory := nil.
	Smalltalk garbageCollect.
	PreReifiedMemory cleanupCache.
	postGCSize := PreReifiedMemory cache size.
	self assert: postGCSize < initialSize