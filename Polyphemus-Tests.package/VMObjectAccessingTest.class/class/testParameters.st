tests
testParameters 

	^ ParametrizedTestMatrix new
		forSelector: #resourceClass
			addOptions: { PharoCandleImageResource . MinimalPharo11ImageResource };
		yourself