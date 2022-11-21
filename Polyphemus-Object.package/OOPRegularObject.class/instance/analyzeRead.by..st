read/write usage
analyzeRead: aVariableNode by: aSemanticAnalyzer

	self oopClassName = 'LocalVariable' ifTrue: [ self halt. aSemanticAnalyzer analyzeLocalVariableRead: self].
	