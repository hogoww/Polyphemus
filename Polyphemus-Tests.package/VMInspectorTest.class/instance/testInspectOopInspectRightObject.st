tests
testInspectOopInspectRightObject
	| objectOop window |
	objectOop := self newObjectWithSlots: 1.
	window := image inspectOop: objectOop.
	[self assert: window title equals: 'Inspector on ', objectOop printString]
	ensure: [ window close ]