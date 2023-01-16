accessing
oopUsers
	^ ((self oopSlotNamed: #users) oopSlotNamed: #array) allReifiedSlots select: [ :o | o isNotNilOop ]