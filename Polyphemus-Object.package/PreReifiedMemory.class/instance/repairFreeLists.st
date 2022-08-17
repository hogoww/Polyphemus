as yet unclassified
repairFreeLists

	| abnormalList currentFreeLists supposedLastFreeObject newFreeLists |
	"setUp"
	self fillBlankBetween: self nilObject and: objectsArray size.
	self createCompressedVersion.
	supposedLastFreeObject := self computeLastFreeObject.
	
	"We need current freeLists and current abnormal oop list"
	abnormalList := self select: [ :oop | oop isAbnormalOop ].
	abnormalList := abnormalList asOrderedCollection.
	abnormalList add: supposedLastFreeObject.
	
	currentFreeLists := OrderedCollection new.
	memory allFreeObjectsDo: [ :anOop | 
		currentFreeLists add: (OOPFreeObject on: anOop memory: self) ].
	
	newFreeLists := self freeLists: currentFreeLists union: abnormalList.
	"Those objects are not free objects we need to remove them from the freeList
	currentFreeLists do: [ :anOop | memory setFree: anOop address ]."
	corruptedFreeObjects := currentFreeLists.
	
	self
		addFreeLists: newFreeLists
		elementsFrom: abnormalList
		with: supposedLastFreeObject.
		
	self clearFreeLists.	
	self constructFreeListsFrom: newFreeLists.
	