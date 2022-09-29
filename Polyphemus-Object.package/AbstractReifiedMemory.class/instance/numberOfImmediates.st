querying
numberOfImmediates

	^ (self objects collect:[ :o | 
		o allSlots count: [:s| s isImmediateOop ]]) sum.