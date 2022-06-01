reifying
reifyMemoryThroughRoots

	"For now take all already reified objects as Roots, may be changed in the future cause it add a lot of redundancy"

	| roots foundOop |
	roots := self select: [ :obj | true ].
	foundOop := Set new.
	roots do: [ :aRoot | 
		aRoot objectGraph do: [ :subgraph | 
			subgraph do: [ :anOop | 
				(self isInRange: anOop address) ifTrue: [ foundOop add: anOop ] ] ] ].
	foundOop asOrderedCollection sort.
	"self addIncorrectOop. from here we could create and add an incorrectObjectOop that represent the weird section"
	foundOop do: [:obj | objects add: (obj address -> obj) ]