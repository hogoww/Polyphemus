initialization
initializeFrom: aReifiedMemory
	"Nothing to do in most cases.
	Mostly, it's for the Pharo10/11 index breaking changes"

	aReifiedMemory reifiedMetaclass numSlots < 12
		ifTrue: [ 
			classesNamesIndex := 7.
			metaclassNameIndex := 6
			]
		ifFalse: [ 
			classesNamesIndex := 8.
			metaclassNameIndex := 7
			 ]