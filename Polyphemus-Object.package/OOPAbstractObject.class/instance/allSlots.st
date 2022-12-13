accessing-slots
allSlots

	| result |
	result := self classLayout allVisibleSlots.
	result ifEmpty: [ "this is an in case that I don't fully grasp" 
		result addAll: self allReifiedSlots ].
	^ result