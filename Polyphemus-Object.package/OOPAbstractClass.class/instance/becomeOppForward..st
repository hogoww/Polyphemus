reflective operations
becomeOppForward: anOOPClassInstanceSideObject

	memory reifiedClassTable
		classAt: anOOPClassInstanceSideObject oopClassIndex
		put: memory nilObject.
	super becomeOppForward: anOOPClassInstanceSideObject.
	