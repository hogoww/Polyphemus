execution
executeOn: aMemoryPresenter
	| compiledBlock |
	compiledBlock := OpalCompiler new
			source: self queryInput text;
			noPattern: true;
			evaluate.
	self currentQuery executeCode: compiledBlock on: aMemoryPresenter