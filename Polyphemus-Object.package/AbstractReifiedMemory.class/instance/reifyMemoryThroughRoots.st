reifying
reifyMemoryThroughRoots

	"For now take all already reified objects as Roots, may be changed in the future cause it add a lot of redundancy"

	| visitor lastKnownIndex aRoot |
	visitor := OOPObjectMissingSubgraphVisitor new.
	visitor memory: self.

	lastKnownIndex := self indexForAddress: lastKnownObject address.
	
	1 to: lastKnownIndex do: [ :anIndex | 
		aRoot := objectsArray at: anIndex.
		aRoot ifNotNil: [ 
			visitor
				rootObject: aRoot;
				compute ] ]