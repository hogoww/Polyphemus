vm-functions
totalByteSizeOf: anOop
	"shortcircuit DNU, because it's a costly operation that's used more than a little, apparently"
	^ memory totalByteSizeOf: anOop