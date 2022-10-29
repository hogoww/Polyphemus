accessing
oopUsers
	^ ((self oopSlotNamed: #users) oopSlotNamed: #array) allSlots select: [ :o | o isNotNilOop ]