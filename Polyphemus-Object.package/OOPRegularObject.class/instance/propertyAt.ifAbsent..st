debugger
propertyAt: aKey ifAbsent: aFullBlockClosure

	"The +2 is to skip method and selector as it seems that the basicAt:m in the original method does that"
	self isAdditionalMethodState ifFalse: [ ^ self ].
	1 to: self oopSize do: [ :i | 
		| propertyOrPragma "<Association|Pragma>" |
		propertyOrPragma := self reifiedSlotAt: i + 2.
		(propertyOrPragma isAssociation and: [ propertyOrPragma key == aKey ]) 
			ifTrue: [ ^ propertyOrPragma value ] ].
	^ aFullBlockClosure value