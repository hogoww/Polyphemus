inspection
inspectionItems 

	| items |
	items := super inspectionItems.
	items addFirst: #caller -> self oopCaller.
	^items