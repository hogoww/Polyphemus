initialization
updatePresenter
	reifiedMemory := ReifiedMemory on: interpreter objectMemory.
	codePresenter interactionModel addBinding: (WorkspaceVariable key: #reifiedMemory value: reifiedMemory)