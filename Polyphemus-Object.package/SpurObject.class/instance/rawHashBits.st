accessing-header
rawHashBits
	" Returns the index in the classTable of the class in objOop"
	self flag: #endianness.
	^((self memory unsignedLongAt: self oop + 4 bigEndian: false) bitAnd: self identityHashHalfWordMask)