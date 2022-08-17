as yet unclassified
addFreeLists: newFreeLists elementsFrom: abnormalList with: supposedLastFreeObject

	abnormalList do: [ :anOop | "if it is the supposedLastFreeObject, it means it is missing and we need it"
		anOop = supposedLastFreeObject ifTrue: [ newFreeLists add: anOop ].
		"If it is below the address of the the supposedLastFreeObject, it is a missing freeObject or a corruption that must be filled"
		anOop address < supposedLastFreeObject address ifTrue: [ 
			newFreeLists add: anOop ].
		"If it is above then it is an anomaly whatsoever"
		anOop address > supposedLastFreeObject address ifTrue: [ 
			self addAbnormal: anOop ] ].
