adding
addAbnormal: anOOPAbnormalObject

	abnormalObjects ifNil: [abnormalObjects := OrderedCollection new ].
	abnormalObjects add: anOOPAbnormalObject