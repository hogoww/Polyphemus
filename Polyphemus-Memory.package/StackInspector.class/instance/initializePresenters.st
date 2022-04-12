initialization
initializePresenters
	
	stack := self newTable.
	stack addColumn: (SpStringTableColumn evaluated: [ :aFrame | aFrame ]).
	
	newSpace := self instantiate: SpRoassalPresenter.
	oldSpace := self instantiate: SpRoassalPresenter.

	"stepButton := self newButton.
	stepButton label: 'Step'.
	
	disassembleAtPCButton := self newButton.
	disassembleAtPCButton label: 'Disassemble at PC'" 
