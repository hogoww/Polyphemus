testing
isMiddleFrame
	^ self isBaseFrame not and: [ self isTopFrame not ]