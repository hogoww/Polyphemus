debugger
newMethod: anInteger header: anInteger2 

	self oopName = 'CompiledMethod' ifTrue: [ 
		^ CompiledMethod newMethod: anInteger header: anInteger2 ].
	self error: 'This call should only be made for compiled method class'