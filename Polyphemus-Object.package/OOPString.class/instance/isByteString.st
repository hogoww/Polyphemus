testing
isByteString
	"This should work only for Pharo but not Cnadle (see Mode)"
	^self oopClassName = 'ByteString'