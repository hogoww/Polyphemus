accessing
basicNumberOfSlots
	^ self headerInteger >> (self headerSize * 8 "bits" - 8 "number of slots mask size")