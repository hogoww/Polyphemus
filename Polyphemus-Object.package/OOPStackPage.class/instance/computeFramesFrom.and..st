initialization
computeFramesFrom: aCogStackPage and: aMemory

	| bottomFrame currentFrame |
	bottomFrame := OOPAbstractStackFrame newFrom: aCogStackPage for: aCogStackPage baseAddress on: aMemory.
	stackFrames push: bottomFrame.

	currentFrame := bottomFrame.
	[ 
	currentFrame := currentFrame frameAbove.
	currentFrame
		ifNotNil: [ 
			stackFrames push: currentFrame.
			true ]
		ifNil: [ false ] ] whileTrue