accessing
key

	"Hack for now"
	(self acceptableClassNamesForKey includes: self oopClassName) ifTrue: [ ^self reifiedSlotAt: 1 ] ifFalse: [ self error: 'Undefined behvavior yet' ]
