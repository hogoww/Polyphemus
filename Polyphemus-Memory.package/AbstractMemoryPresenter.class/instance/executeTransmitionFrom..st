query
executeTransmitionFrom: aQueryWidget
	| query res |
	self halt.
	query := aQueryWidget currentQuery.
	scaling := OpalCompiler new
		source: aQueryWidget queryInput text;
		noPattern: true;
		evaluate.
	self updateMemorySpace