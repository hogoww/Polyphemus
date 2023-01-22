building suites
testParameters 

	^ ParametrizedTestMatrix new
		forSelector: #resourceClass
			addOptions: { PharoCandleImageResource . MinimalPharo11ImageResource . Pharo11ImageResource };
		yourself