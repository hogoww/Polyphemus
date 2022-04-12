tests
testIntegerKnowsItsClass
	| class object |
	class := memory fetchClassOf: (memory integerObjectOf: 1).
	object := SpurObject on: (image simulator integerObjectOf: 42) image: image.
	self assert: class equals: object classOop