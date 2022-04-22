statistics
calculateStats
		
	statList := Bag new.
	presenter allNodes collect: [ :aNode | aNode paint ] into: statList