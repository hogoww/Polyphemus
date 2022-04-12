as yet unclassified
classOrNilAtIndex: classIndex
	
	| classTablePage nilObj |

	"self assert: (classIndex <= self tagMask or: [classIndex >= image arrayClassIndexPun])."
	nilObj := image nilObject.
	classTablePage := self classTablePageNumber: (classIndex >> image classTableMajorIndexShift) + 1.
	classTablePage = nilObj ifTrue:
		[^nilObj].
	^ (classTablePage
		slotAt: (classIndex bitAnd: image classTableMinorIndexMask) + 1) asSpurClass