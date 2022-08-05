vm-functions
isOldObject: anObject
	"shortcircuit DNU, because it's a costly operation that's used more than a little, apparently"
	^ memory isOldObject: anObject