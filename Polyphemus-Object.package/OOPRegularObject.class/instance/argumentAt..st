debugger
argumentAt: anInteger 
	"This is for pragmas and the debugger/decompiler, we should chcek the classname"
	
	| arguments |
	arguments := self reifiedSlotAt: 2.
	
	^arguments reifiedSlotAt: anInteger 