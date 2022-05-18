memoryScoping
setScopeToNewSpace
	scopingBlock := [ :anOop | anOop isOldOop not ].
	self updateScope.