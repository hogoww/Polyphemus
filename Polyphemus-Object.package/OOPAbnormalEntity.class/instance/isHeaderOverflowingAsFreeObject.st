testing
isHeaderOverflowingAsFreeObject

	"I dunno how to calculate this rigt so here is my best guess"
	^ size > (memory numSlotsMask * memory wordSize) 