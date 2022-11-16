debugger
includesProperty: aKey

	"The +2 is to skip method and selector as it seems that the basicAt:m in the original method does that"
	self isAdditionalMethodState
		ifTrue: [ 
			1 to: self oopSize do: [ :i | 
				| propertyOrPragma "<Association|Pragma>" |
				propertyOrPragma := self reifiedSlotAt: i + 2.
				(propertyOrPragma isAssociation and: [ 
					 propertyOrPragma key == aKey ]) ifTrue: [ ^ true ] ].
			^ false ]
		ifFalse: [ 
			^ self error:
				  'Only AdditionnalMethodState should know this message' ]