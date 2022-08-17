as yet unclassified
computeLastFreeObject

	| addressAfterLastObject supposedLastFreeObject size |
	"Dunno if we had to compute it by hand or if the simulator can handle"
	addressAfterLastObject := objects last address
	                          + objects last oopByteSize.
	size := memory endOfMemory - addressAfterLastObject.
	size > (memory numSlotsMask * memory wordSize) ifTrue: [ 
		addressAfterLastObject := addressAfterLastObject
		                          + memory baseHeaderSize ].

	supposedLastFreeObject := OOPAbnormalEntity
		                          newFor: addressAfterLastObject
		                          size: size
		                          on: self.

	^ supposedLastFreeObject