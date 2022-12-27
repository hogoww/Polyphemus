debugger
propertyAt: aKey ifAbsent: aFullBlockClosure

	"See comments of includesProperty:"

	"We don't use propertyOrPragma value, since this is an anAssociation we use directly the second slot"

	self isAdditionalMethodState ifFalse: [ ^ self ].
	1 to: self oopSize do: [ :i | 
		| propertyOrPragma "<Association|Pragma>" |
		propertyOrPragma := self reifiedSlotAt: i + 2.
		(propertyOrPragma isAssociation and: [ propertyOrPragma key = aKey ]) 
			ifTrue: [ ^ propertyOrPragma reifiedSlotAt: 2 ] ].
	^ aFullBlockClosure value