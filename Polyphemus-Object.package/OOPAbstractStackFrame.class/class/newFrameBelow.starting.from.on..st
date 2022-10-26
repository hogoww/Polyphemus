instance creation
newFrameBelow: aStackFrame starting: anInteger from: aCogStackPage on: aPreReifiedMemory
	
	"This is asked by the frameAbove"
	(self shouldBeBaseFrame: anInteger on: aPreReifiedMemory)
		ifTrue: [ 
			^OOPBaseFrame
				newFrameBelow: aStackFrame
				starting: anInteger
				from: aCogStackPage
				on: aPreReifiedMemory ]
		ifFalse: [ 
			^OOPMiddleFrame
				newFrameBelow: aStackFrame
				starting: anInteger
				from: aCogStackPage
				on: aPreReifiedMemory ]