as yet unclassified
classTablePageNumber: anInteger
	"anInteger is 1 based"
	| classTablePage |
	classTablePage := SpurObject
						on:(self slotAt: anInteger) address
						image: image.
	self assert: classTablePage format = image arrayFormat.
	self assert: classTablePage classIndex = image arrayClassIndexPun.
	^ classTablePage