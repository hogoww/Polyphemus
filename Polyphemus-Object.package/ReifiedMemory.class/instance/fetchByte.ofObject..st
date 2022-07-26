vm-functions
fetchByte: anImmediate ofObject: anObject
	"shortcircuit DNU, because it's a costly operation that's used more than a little, apparently"
	^ memory fetchByte: anImmediate ofObject: anObject