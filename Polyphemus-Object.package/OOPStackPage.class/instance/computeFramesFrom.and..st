initialization
computeFramesFrom: aCogStackPage and: aMemory

	| topFrame currentFrame interpreter |
	aCogStackPage baseFP = 0 ifTrue: [ "Frame is not initialized page is free, may be reify me" 
		^ self ].
	interpreter := aMemory interpreter.
	topFrame := interpreter stackPages mostRecentlyUsedPage
	            = associatedPage
		            ifTrue: [ 
			            OOPAbstractStackFrame
				            newTopFrameFrom: aCogStackPage
				            startingAt: interpreter framePointer
				            endingAt: interpreter stackPointer
				            on: aMemory ]
		            ifFalse: [ 
			            OOPAbstractStackFrame
				            newFrom: aCogStackPage
				            for: aCogStackPage baseAddress
				            on: aMemory ].

	currentFrame := topFrame.
	[ 
	stackFrames add: currentFrame.
	currentFrame isBaseFrame
		ifTrue: [ true ]
		ifFalse: [ 
			currentFrame := currentFrame oopCaller.
			false ] ] whileFalse