debugger
codeForNoSource

	Smalltalk hasCompiler ifFalse: [ ^ nil ].

	^ (self compiler decompileMethod: self) formattedCode