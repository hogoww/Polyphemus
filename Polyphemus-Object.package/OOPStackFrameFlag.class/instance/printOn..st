printing
printOn: aStream

	| toPrint |
	toPrint := 'numArgs: ' , numArgs asString , ' | hasContext: ' , hasContext asString
	           , ' | isBlockActivation: ' , isBlockActivation asString.
	^ aStream << toPrint