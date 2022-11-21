as yet unclassified
generateFrom: anInteger to: anotherInteger
	<script>
	| image methodsOop |
	self halt.
	image := self basicNew resourceClass current.
	methodsOop := image reifiedMemory select: [ :o | o isCompiledMethodOop and: [ o oopSelector printString asSymbol isBinary not ] ].
	self assert: anInteger < methodsOop size.
	self assert: anotherInteger < methodsOop size.
	
	anInteger to: anotherInteger do: [ :anIndex | | selector body address aMethodOop |
		aMethodOop := methodsOop at: anIndex.
		address := aMethodOop address.
		selector := 'test' , (aMethodOop oopMethodClass printString reject: [ :o | o = Character space  ]) , (aMethodOop oopSelector printString capitalized reject: [ :o | o = $: ]) .
		body := '{1}
		| methodOop |
				methodOop := reifiedMemory objectAt: {2}.
				self assert: methodOop isCompiledMethodOop.
				methodOop decompile
		' format: { selector . address }.
		self compile: body
		].	