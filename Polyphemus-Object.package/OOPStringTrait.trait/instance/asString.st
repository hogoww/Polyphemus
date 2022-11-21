converting
asString
	^ String streamContents: [ :s |
		self allIndexed do: [ :aSlot | s nextPut: aSlot asCharacter ]
	]