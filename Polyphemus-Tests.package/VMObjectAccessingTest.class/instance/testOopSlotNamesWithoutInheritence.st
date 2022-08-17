tests-slotNames
testOopSlotNamesWithoutInheritence
	| pointClass |
	pointClass := reifiedMemory reifiedClassTable allClassesOop detect: [ :o | o oopClassName = #PCPoint ].
	self assert: pointClass oopSlotNames first printString equals: #x.
	self assert: pointClass oopSlotNames second printString equals: #y