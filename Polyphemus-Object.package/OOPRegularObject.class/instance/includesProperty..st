debugger
includesProperty: aKey

	"The +2 is to skip method and selector as it seems that the basicAt:m in the original method does that"
	"It was propertyOrPragma key == aKey but we changed to propertyOrPragma key = aKey to have a lookUp and change behavior, dunno if this have a sideEffect"
	self isAdditionalMethodState
		ifTrue: [ 
			1 to: self oopSize do: [ :i | 
				| propertyOrPragma "<Association|Pragma>" |
				propertyOrPragma := self reifiedSlotAt: i + 2.
				(propertyOrPragma isAssociation and: [ 
					 propertyOrPragma key = aKey ]) ifTrue: [ ^ true ] ].
			^ false ]
		ifFalse: [ 
			^ self error:
				  'Only AdditionnalMethodState should know this message' ]