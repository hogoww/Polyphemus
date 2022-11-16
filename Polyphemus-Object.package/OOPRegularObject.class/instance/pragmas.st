accessing
pragmas

	"The +2 is to skip method and selector as it seems that the basicAt:m in the original method does that"
	self isAdditionalMethodState ifTrue: [
		^ Array new: self oopSize streamContents: [ :pragmaStream | 
			  1 to: self oopSize do: [ :i | 
				  | propertyOrPragma "<Association|Pragma>" |
				  (propertyOrPragma := self reifiedSlotAt: i + 2) isAssociation ifFalse: [ 
					  pragmaStream nextPut: propertyOrPragma ] ] ] ]