initialization
setUpStringClasses
	" This is mostly guess work.
	In Pharo candle for example, classes name are PCStrings.
	In Pharo, classes names are ByteSymbols"
	| stringClass |
	stringClass := (OOPClassObject on: memory classString memory: self).
	stringClasses at: #ByteStringClassOop put: stringClass address.
	stringClasses at: #StringClassOop put: stringClass oopSuperclass address.
	stringClasses at: #ByteSymbolClassOop put: (self reifyOop: metaclass) classNameObject oopClass address.