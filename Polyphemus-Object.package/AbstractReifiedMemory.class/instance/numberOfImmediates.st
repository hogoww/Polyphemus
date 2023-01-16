querying
numberOfImmediates

	^ (self objects collect:[ :o | 
		o allReifiedSlots count: [:s| s isImmediateOop ]]) sum.