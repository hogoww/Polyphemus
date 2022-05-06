special-objects
hiddenRootsObj

	hiddenRoots ifNil: [ 
		hiddenRoots := self freeListObj nextObject address ].
	^ SpurHiddenRoots on: hiddenRoots memory: self