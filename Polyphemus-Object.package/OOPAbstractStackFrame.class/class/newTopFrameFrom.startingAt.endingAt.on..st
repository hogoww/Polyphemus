instanciation
newTopFrameFrom: aCogStackPage startingAt: start endingAt: end on: aPreReifiedMemory 
	
	"This is ask from the stackpage, the top frame will create the other frames"
	(self shouldBeBaseFrame: start on: aPreReifiedMemory)
		ifTrue: [ 
			^OOPBaseFrame
				newStart: start
				end: end
				from: aCogStackPage
				on: aPreReifiedMemory ]
		ifFalse: [ 
			^OOPTopFrame
				newStart: start
				end: end
				from: aCogStackPage
				on: aPreReifiedMemory ]