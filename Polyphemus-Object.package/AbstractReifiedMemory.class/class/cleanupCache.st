instance creation
cleanupCache
	MemoryCache removeAllSuchThat: [ :anElement | anElement isNil ].