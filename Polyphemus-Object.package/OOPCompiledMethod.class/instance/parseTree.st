debugger
parseTree

	"returns an AST for this method, do not cache it. (see #ast for the cached alternative)"
	| ast |
	ast := self methodClass compiler 
		source: self sourceCode;
		failBlock: [^ self decompile ];
		class: self methodClass;
		parse.
	ast compilationContext compiledMethod: self.
	^ast