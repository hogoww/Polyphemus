tests
testCreatinRememberedSetObject
	| oopObject |
	oopObject :=  self reifyOop: memory rememberedSetObj.
	self assert: oopObject class equals: OOPRememberedSetObject