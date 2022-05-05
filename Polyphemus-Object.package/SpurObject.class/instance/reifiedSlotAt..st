accessing-slots
reifiedSlotAt: anIndex
	"Api is 1 based but the memory api is O based"
	self numSlots >= anIndex ifFalse: [ SubscriptOutOfBounds signal ].
	^ SpurObject on: (self spurLayout reifiedSlotAt: anIndex - 1) image: image 