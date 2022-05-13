caching
registerPage: aPage
	"There are *many* class table pages slots, with not many *filled* class tables
	So we cache them for speed"
	classTablePages add: aPage