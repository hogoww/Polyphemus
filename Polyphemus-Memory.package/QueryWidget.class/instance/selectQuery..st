updated
selectQuery: aQueryName 
	| querySelected |
	querySelected := queries at: aQueryName.
	queryInput text: querySelected defaultText.