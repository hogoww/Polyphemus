accessing
key

	"Hack for now"
	self oopClassName = 'GlobalVariable' ifTrue: [ ^self reifiedSlotAt: 1 ]