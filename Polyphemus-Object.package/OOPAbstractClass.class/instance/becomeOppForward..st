reflective operations
becomeOppForward: aClassOop
self oopClassIndex "1182".
	memory reifiedClassTable
		classAtIndex: aClassOop oopClassIndex "1187"
		put: memory nilObject.
	super becomeOppForward: aClassOop.
	aClassOop setIndexInClassTableTo: self oopClassIndex.
