adding
addAbnormal: anOOPAbnormalObject

	abnormalObjects ifNil: [abnormalObjects := Set new ].
	abnormalObjects add: anOOPAbnormalObject