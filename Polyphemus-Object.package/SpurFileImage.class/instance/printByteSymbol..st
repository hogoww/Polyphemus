accessing
printByteSymbol: aByteSymbolClass

	^ aByteSymbolClass asLocalByteArray asString reject: [ :e | e = Character null]