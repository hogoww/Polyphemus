tests
testCorruptFirstNonRootsObject

	"Hard code first object that is not kinda special"
	self corrupt: 8596968.

	reifiedMemory := ReifiedMemory on: memory.
	
	self assert: reifiedMemory flagErrorObjects.
	self assert: reifiedMemory objects size equals: 2473 