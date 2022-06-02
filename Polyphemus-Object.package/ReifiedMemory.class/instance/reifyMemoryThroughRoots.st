reifying
reifyMemoryThroughRoots

	"For now take all already reified objects as Roots, may be changed in the future cause it add a lot of redundancy"

	| roots foundOop lastKnownObject |
	roots := (self select: [ :obj | true ]) asOrderedCollection.
	lastKnownObject := roots last.
	foundOop := Set new.
	roots do: [ :aRoot | 
		aRoot ifNotNil: [ 
			aRoot objectGraph do: [ :subgraph | 
				subgraph do: [ :anOop | "Not sure of this heuristic, we could encounter an erronous object"
					roots
						remove: anOop
						ifAbsent: [ 
						anOop address > (lastKnownObject address) ifTrue: [ foundOop add: anOop ] ] ] ] ] ].
	foundOop := foundOop asOrderedCollection sort.
	"This should not be here at there is possible conflict with freeObjects that are not here yet"
	self fillBlankBetweenOopStartingAt: lastKnownObject for: foundOop.
	foundOop do: [ :obj | objects add: obj address -> obj ]