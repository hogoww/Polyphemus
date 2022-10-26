initialization
computeCaller: aCogStackPage

	caller := OOPAbstractStackFrame
		          newFrameBelow: self
		          starting: (memory interpreter stackPages longAt: framePointer)
		          from: aCogStackPage
		          on: memory