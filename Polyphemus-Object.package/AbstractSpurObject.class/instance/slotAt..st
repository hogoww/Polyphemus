accessing-slots
slotAt: anIndex
	"Api is 1 based but the memory api is O based"
	self numSlots >= anIndex ifFalse: [ SubscriptOutOfBounds signal ].
	^ self spurLayout slotAt: anIndex - 1