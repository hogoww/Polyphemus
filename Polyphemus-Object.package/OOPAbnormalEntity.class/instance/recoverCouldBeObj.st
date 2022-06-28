as yet unclassified
recoverCouldBeObj
	"We start with a forward decoding because we are optimistic that we are not on a corrupted part and this is indeed a normal section."

	[ self forwardDecoding ] onErrorDo: [ self reverseDecoding. ].
	^couldBeObjLists 
	
	