initialization
snapshotMemory
	"Object accesses are easier with dictionary, but ordered."
	objects := Dictionary new.
	self initializeObjectsFromMemory.	
	allObjects := objects values sorted: [ :e1 :e2 | e1 address < e2 address ]