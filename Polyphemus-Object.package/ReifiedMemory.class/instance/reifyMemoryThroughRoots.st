reifying
reifyMemoryThroughRoots

	"For now take all already reified objects as Roots, may be changed in the future cause it add a lot of redundancy"

	| visitor lastKnownIndex aRoot |
	visitor := OOPObjectMissingSubgraphVisitor new.
	visitor
		baseAddress: baseAddress;
		toIgnore: objects.

	lastKnownIndex := lastKnownObject address - baseAddress >> 3.

	1 to: lastKnownIndex do: [ :anIndex | 
		aRoot := objects at: anIndex.
		aRoot ifNotNil: [ 
			visitor
				rootObject: aRoot;
				compute ] ]