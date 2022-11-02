querying
allReceiver
	| receivers |
	receivers := OrderedCollection new.
	
   stackpages do: [:page | receivers addAll: page allReceiver].

	^receivers
