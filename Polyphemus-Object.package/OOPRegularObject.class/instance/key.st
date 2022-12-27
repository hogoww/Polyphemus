accessing
key

	"Hack for now"

	| res |
	(self acceptableClassNamesForKey includes: self oopClassName)
		ifTrue: [ 
			res := self reifiedSlotAt: 1.
			res isNilOop ifTrue: [ ^ nil ] ifFalse: [ ^res ] ]
		ifFalse: [ self error: 'Undefined behvavior yet' ]