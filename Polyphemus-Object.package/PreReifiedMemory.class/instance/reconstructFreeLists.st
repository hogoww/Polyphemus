reflective operations
reconstructFreeLists

	"Pay attention oes not work when crossing segments"

	| freeChunks freeLists address size |
	"First we clear the current FreeLists as it is corrupted"
	freeLists := self reifyOop: self freeListsObj.
	freeLists allIndexed doWithIndex: [ :aSlot :anIndex | freeLists indexedAt: anIndex put: 0 ].


	"Then we need to find all freeChunks in our memory"
	self fillBlankBetween: self nilObject and: self endOfMemory.
	self createCompressedVersion.
	freeChunks := self select: [ :anOop | anOop isAbnormalOop ].
	
	"We create the final freeChunk"
	address := self addressAfter: objects last address.
	size := self endOfMemory - address.
	freeChunks :=  freeChunks asOrderedCollection. "Need to see why this is not the case yet"
	freeChunks add: (OOPAbnormalEntity newFor: address size: size  on: self).
	
	"We add the freeChunks in the freeLists"
	freeChunks do: [ :aFreeChunk | 
		self addFreeChunkWithBytes: aFreeChunk size at: aFreeChunk address ].