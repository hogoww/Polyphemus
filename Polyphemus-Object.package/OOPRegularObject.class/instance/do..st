debugger
do: aFullBlockClosure 
	"This is an implementation of do: for making the debugger/decompiler work"
	
	| size |
	self oopClassName = 'Array'
		ifTrue: [ 
			size := self numSlots.
			1 to: size do:[:index | aFullBlockClosure value: (self at: index)] ]
		ifFalse: [ self error: 'Undefined behvavior yet' ]