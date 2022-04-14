header
oopFormat
	^ memory formatOf: address
"	^ (self headerInteger >> 24) bitAnd: 2r11111"