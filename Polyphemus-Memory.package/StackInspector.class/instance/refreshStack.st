display
refreshStack
	| stackBuilder stackFramesComponent items frameSeparator |
	frameSeparator := '###################################' .
	stackBuilder:= VMStackBuilder from: interpreter.
	stackFramesComponent := stackBuilder frames 
		collect: [ :f | { frameSeparator -> f } , f allFrameParts ].
	
	items := stackFramesComponent flatCollect: [ :stackFrame | stackFrame ]. 
	stack items: items