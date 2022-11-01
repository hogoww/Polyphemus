initialization
initializeFrom: aReifiedMemory
	"Nothing to do in most cases.
	Mostly, it's for the Pharo10/11 index breaking changes"

	(aReifiedMemory simulator numSlotsOf: (aReifiedMemory simulator classAtIndex: aReifiedMemory metaclassIndex)) < 12
		ifTrue: [ 
			metaclassNameIndex := 6.
			classesNamesIndex := 7.
			]
		ifFalse: [ 
			metaclassNameIndex := 7.
			classesNamesIndex := 8.
			 ]