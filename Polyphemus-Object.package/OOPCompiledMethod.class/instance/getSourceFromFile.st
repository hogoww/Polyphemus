debugger
getSourceFromFile

	| sourceFiles |
	sourceFiles := memory retrieveSourceFiles.
	^ [ sourceFiles sourceCodeAt: self sourcePointer ] on: Error do: [ '' ]