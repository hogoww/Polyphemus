vm-functions
num64BitUnitsOf: anOop
	"shortcircuit DNU, because it's a costly operation that's used more than a little, apparently"
	^ memory num64BitUnitsOf: anOop