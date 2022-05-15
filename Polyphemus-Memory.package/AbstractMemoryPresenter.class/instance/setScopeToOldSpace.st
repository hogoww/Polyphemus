memoryScoping
setScopeToOldSpace
	scopingBlock := [ :anOop | anOop isOldOop ].
	self updateScope.