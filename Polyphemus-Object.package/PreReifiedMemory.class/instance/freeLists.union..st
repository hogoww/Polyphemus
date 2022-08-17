as yet unclassified
freeLists: currentFreeLists union: abnormalList

	| union |
	union := OrderedCollection new.
	abnormalList do: [ :anAbnormalOop | 
		anAbnormalOop ifNotNil: [ 
			currentFreeLists do: [ :aFreeOop | 
				aFreeOop ifNotNil: [ 
					(anAbnormalOop = aFreeOop and: [ 
						 anAbnormalOop oopByteSize = aFreeOop oopByteSize ]) ifTrue: [ 
						"it is a hit"
						union add: aFreeOop.
						currentFreeLists remove: aFreeOop.
						abnormalList remove: anAbnormalOop ] ] ] ] ].

	^ union