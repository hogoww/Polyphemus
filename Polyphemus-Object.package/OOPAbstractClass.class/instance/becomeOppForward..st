reflective operations
becomeOppForward: aClassOop
	self oopClassIndex.
	memory reifiedClassTable
		classAtIndex: aClassOop oopClassIndex
		put: memory nilObject.
	super becomeOppForward: aClassOop.
	aClassOop setIndexInClassTableTo: self oopClassIndex.
