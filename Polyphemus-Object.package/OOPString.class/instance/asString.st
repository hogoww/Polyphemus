printing
asString
	^ String streamContents: [ :s |
		self allBytes do: [ :aSlot | s nextPut: aSlot asCharacter ]
	]