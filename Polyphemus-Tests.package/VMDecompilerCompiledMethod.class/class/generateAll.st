as yet unclassified
generateAll
	<script>
	| image methodsOop |
	image := self basicNew resourceClass current.
	methodsOop := image reifiedMemory select: [ :o | o isCompiledMethodOop and: [ o oopSelector printString asSymbol isBinary not ] ].
	methodsOop do: [ :aMethodOop | | selector body address |
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