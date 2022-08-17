reflective operations
constructFreeListsFrom: freeChunks

	freeChunks sort: [ :m1 :m2 | m1 oopByteSize > m2 oopByteSize ].
	"There should be no differentiation between small and big header but ..."
	freeChunks do: [ :aFreeChunk | 
		aFreeChunk isHeaderOverflowingAsFreeObject
			ifTrue: [ "We have to remove the extra header and add it to the chunk"
				memory
					addFreeChunkWithBytes:
					aFreeChunk oopByteSize + aFreeChunk headerSize
					at: aFreeChunk address - aFreeChunk headerSize ]
			ifFalse: [ 
				memory
					addFreeChunkWithBytes: aFreeChunk oopByteSize
					at: aFreeChunk address ] ].
	"Add the freeObj, it should overwrite the abnormalObject at the emplacement "
	memory allFreeObjectsDo: [ :anOop | 
		self objectAt: anOop put: (OOPFreeObject on: anOop memory: self) ]