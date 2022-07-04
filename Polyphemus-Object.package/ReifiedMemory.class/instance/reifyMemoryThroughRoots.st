reifying
reifyMemoryThroughRoots

	"For now take all already reified objects as Roots, may be changed in the future cause it add a lot of redundancy"

	| foundOop lastKnownObject res |
	compressedObjects := (objects select: [ :e | e isNotNil ]) asOrderedCollection.
	lastKnownObject := compressedObjects last.
	foundOop := OrderedCollection new.
	compressedObjects do: [ :aRoot | 
		1halt.
			res := OOPObjectMissingSubgraphVisitor new
				toIgnore: foundOop;
				rootObject: aRoot;
				compute.
	 ].
	foundOop sort.
	"This should not be here at there is possible conflict with freeObjects that are not here yet"
	self fillBlankBetweenOopStartingAt: lastKnownObject for: foundOop.
	foundOop sort.
	
	foundOop do: [ :obj | self objectAt: obj address put: obj ].
	compressedObjects := foundOop.