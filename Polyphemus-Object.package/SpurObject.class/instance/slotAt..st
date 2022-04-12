accessing-slots
slotAt: anIndex
	"Api is 1 based but the memory api is O based"
	self numSlots >= anIndex ifFalse: [ SubscriptOutOfBounds signal ].
	^ SpurObject on: (self spurLayout slotAt: anIndex - 1) image: image 