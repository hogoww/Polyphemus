running
setUp
	super setUp.
	inspector := self createInspector.
	
	"Only used to retain initial code, that should not be affected by testing"
	cachedCode := ReifiedMemoryScripter lastCode