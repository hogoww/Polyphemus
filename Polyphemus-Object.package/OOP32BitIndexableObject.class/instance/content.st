debugger
content

	| content |
	content := String streamContents: [ :s | 
		           self allIndexed do: [ :aSlot | 
			           s nextPut: aSlot asCharacter ] ].
	^ content