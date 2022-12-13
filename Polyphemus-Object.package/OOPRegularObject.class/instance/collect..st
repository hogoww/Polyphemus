debugger
collect: aFullBlockClosure

	| newCollection size |
	self oopClassName = 'Array'
		ifTrue: [ 
			size := self numSlots.
			newCollection := Array new: size.
			1 to: size do: [ :index | 
				newCollection at: index put: (aFullBlockClosure value: (self reifiedSlotAt: index)) ].
			^ newCollection ]
		ifFalse: [ self error: 'Undefined behvavior yet' ]