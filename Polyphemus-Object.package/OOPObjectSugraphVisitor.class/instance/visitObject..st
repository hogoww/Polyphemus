visiting
visitObject: anOOPRegularObject 
	layer := layer + 1.
	anOOPRegularObject acceptVisitor: self.
	layer := layer - 1