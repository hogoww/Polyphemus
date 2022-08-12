as yet unclassified
repairFreeLists

	| abnormalList currentFreeLists addressAfterLastObject supposedLastFreeObject |
	"setUp"
	self fillBlankBetween: self nilObject and: objectsArray size.
	self createCompressedVersion.
	addressAfterLastObject := objects last address
	                          + objects last sizeInMemory.
	supposedLastFreeObject := OOPAbnormalEntity
		                  newFor: addressAfterLastObject
		                  size: self endOfMemory - addressAfterLastObject
		                  on: self.

	"We need current freeLists and current abnormal oop list"
	abnormalList := self select: [ :oop | oop isAbnormalOop ].
	abnormalList := abnormalList asOrderedCollection.
	abnormalList add: supposedLastFreeObject.
	currentFreeLists := OrderedCollection new.
	memory allFreeObjectsDo: [ :anOop | 
		currentFreeLists add: (OOPFreeObject on: anOop memory: self) ].

	abnormalList do: [ :anAbnormalOop | 
		currentFreeLists do: [ :aFreeOop | 
			(anAbnormalOop = aFreeOop and: [ 
				 anAbnormalOop oopByteSize = aFreeOop oopByteSize ]) ifTrue: [
				 "it is a hit"
				self objectAt: aFreeOop address put: aFreeOop.
				currentFreeLists remove: aFreeOop.
				abnormalList remove: anAbnormalOop ] ] ].

	currentFreeLists ifEmpty: [ ^self ].
	"Those objects are not free objects we need to remove them from the freeList"
	currentFreeLists do: [:anOop | memory setFree: anOop address ].
	corruptedFreeObjects := currentFreeLists.
	