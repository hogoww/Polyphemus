accessing
encoderClass
	^ encoderClass ifNil: [ encoderClass := EncoderForSistaV1 ]