reflective operations
reconstructFreeLists

	"Pay attention does not work when crossing segments"

	| freeChunks address size |
	"First we clear the current FreeLists as it is corrupted"
	self clearFreeLists.
	"Then we need to find all freeChunks in our memory"
	self fillBlankBetween: self nilObject and: memory endOfMemory.
	self createCompressedVersion.

	freeChunks := self select: [ :anOop | anOop isAbnormalOop ].
	"We create the final freeChunk"
	address := memory addressAfter: objects last address.
	size := memory endOfMemory - address.
	freeChunks := freeChunks asOrderedCollection.
	freeChunks add:
		(OOPAbnormalEntity newFor: address size: size on: self).
	self constructFreeListsFrom: freeChunks