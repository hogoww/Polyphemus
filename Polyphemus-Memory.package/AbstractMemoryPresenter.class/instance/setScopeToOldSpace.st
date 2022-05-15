memoryScoping
setScopeToOldSpace
	^ scopingBlock := [ :anOop | anOop isOldOop ]