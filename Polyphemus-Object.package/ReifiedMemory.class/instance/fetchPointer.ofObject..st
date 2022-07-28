vm-functions
fetchPointer: anImmediate ofObject: anObject
	"shortcircuit DNU, because it's a costly operation that's used more than a little, apparently"
	^ memory fetchPointer: anImmediate ofObject: anObject