accessing
header
	^ self isImmediate ifFalse: [ image simulator baseHeader: address value]