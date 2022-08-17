instance creation
zeroSizedObjectClassIndex

	^ zeroSizedObjectClassIndex ifNil: [ self nextOrdinaryClassIndex ]