debugger
binding
	  "Maybe we should check in the diisicated environment, see later"
   | binding |
	binding := self class environment associationAt: self name ifAbsent: [LiteralVariable key: nil value: self].
   ^binding value == self ifTrue: [binding] ifFalse: [LiteralVariable key: nil value: self]