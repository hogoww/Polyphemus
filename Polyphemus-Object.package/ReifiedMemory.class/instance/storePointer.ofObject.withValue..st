vm-functions
storePointer: anImmediate ofObject: anObject withValue: aValue
	"shortcircuit DNU, because it's a costly operation that's used more than a little, apparently"
	^ memory storePointer: anImmediate ofObject: anObject withValue: aValue