query
objectGraph
	| res current stack usedValues |
	res := { { self } } asOrderedCollection.
	current := res.
	stack := Stack new.
	stack add: self.
	usedValues := Set new.
	usedValues add: address value.
	[ stack isNotEmpty ] whileTrue: [ | oop eligibleSlots |
		oop := stack pop.
		stack ifEmpty: [ 
			current := OrderedCollection new. 
			res add: current ].
		
		eligibleSlots := oop allSlots reject: [ :anOop |
			anOop isImmediateOop or: [
			usedValues includes: anOop address value ] ].
		usedValues addAll: (eligibleSlots collect: [ :aSlot| aSlot address value ]). 
		stack addAll: eligibleSlots.
		current addAll: eligibleSlots.
	].
	current ifEmpty: [ res remove: current ].
	^ res