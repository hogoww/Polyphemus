binding
bindingOf: aName

	| aSymbol |
	aSymbol := aName asSymbol.
	"We cheat with the environment here, we should look in the dissecated image environment"
	^ (self innerBindingOf: aSymbol) ifNil: [
		 self class environment lookupVar: aSymbol
	]