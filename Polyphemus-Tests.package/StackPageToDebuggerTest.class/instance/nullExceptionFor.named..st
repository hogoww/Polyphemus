helpers
nullExceptionFor: aContext named: aString
	^ (OupsNullException fromSignallerContext: aContext)
		messageText: aString;
		yourself