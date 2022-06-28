as yet unclassified
couldBeObject: couldBeObjAddress limit: limitAddress

	| classIndex fmt unusedBits unusedBitsInYoungObjects |

	"address and size checks"
	"(memory isImmediate: couldBeObjAddress) ifTrue: [^true]."
	(memory addressCouldBeObj: couldBeObjAddress) ifFalse:
		[self error: 'oop is not a valid address'. ^false].

	(memory oop: (memory addressAfter: couldBeObjAddress) isLessThanOrEqualTo: limitAddress) ifFalse:
		[self error: 'oop size would make it extend beyond the end of memory'. ^false].

	"header type checks"
	(classIndex := memory classIndexOf: couldBeObjAddress) >= memory firstClassIndexPun ifFalse:
		[self error: 'oop is a free chunk, or bridge, not an object'. ^false].
	((memory rawNumSlotsOf: couldBeObjAddress) = memory numSlotsMask
	 and: [(memory rawNumSlotsOf: couldBeObjAddress - memory baseHeaderSize) ~= memory numSlotsMask]) ifTrue:
		[self error: 'oop header has overflow header word, but overflow word does not have a saturated numSlots field'. ^false].

	"format check"
	fmt := memory formatOf: couldBeObjAddress.
	(fmt = 6) | (fmt = 8) ifTrue:
		[self error: 'oop has an unknown format type'. ^false].
	(fmt = memory forwardedFormat) ~= (classIndex = memory isForwardedObjectClassIndexPun) ifTrue:
		[self error: 'oop has mis-matched format/classIndex fields; only one of them is the isForwarded value'. ^false].

	"specific header bit checks"
	unusedBits := (1 << memory classIndexFieldWidth)
				   bitOr: (1 << (memory identityHashFieldWidth + 32)).
	((memory long64At: couldBeObjAddress) bitAnd: unusedBits) ~= 0 ifTrue:
		[self error: 'some unused header bits are set; should be zero'. ^false].

	unusedBitsInYoungObjects := ((1 << memory greyBitShift)
								   bitOr: (1 << memory pinnedBitShift))
								   bitOr: (1 << memory rememberedBitShift).
	((memory longAt: couldBeObjAddress) bitAnd: unusedBitsInYoungObjects) ~= 0 ifTrue:
		[self error: 'some header bits unused in young objects are set; should be zero'. ^false].
	^true


