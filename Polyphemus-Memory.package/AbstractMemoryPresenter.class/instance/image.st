showing
image
	^ image ifNil: [ SpurSimulatorImage onSpurSimulator: interpreter objectMemory ]