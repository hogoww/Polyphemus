initialize
connectPresenters
	
	queryInput 
		bindKeyCombination: Character cr 
		toAction: [ self executeQuery ].
		
	querySelector whenSelectedItemChangedDo: [ :selected | self selectQuery: selected ]