tests
testCorruptFirstNonRootsObject

	"Hard code first object that is not kinda special"
	self corrupt: 8596968.

	reifiedMemory := FullyReifiedMemory on: memory.
	self assert: reifiedMemory flagErrorObjects.
	self assert: reifiedMemory numberOfElements equals: 2473.