testing
isHeaderOverflowingAsFreeObject

	"I dunno how to calculate this rigt so here is my best guess"
	^ self oopByteSize > (memory numSlotsMask * memory wordSize) 