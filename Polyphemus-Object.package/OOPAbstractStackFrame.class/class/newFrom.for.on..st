instance creation
newFrom: aCogStackPage for: anInteger on: aPreReifiedMemory

	(self shouldBeBaseFrame: anInteger on: aPreReifiedMemory)
		ifTrue: [ 
			^OOPBaseFrame
				newFor: anInteger
				from: aCogStackPage
				on: aPreReifiedMemory ]
		ifFalse: [ 
			^OOPStackFrame
				newFor: anInteger
				from: aCogStackPage
				on: aPreReifiedMemory ]