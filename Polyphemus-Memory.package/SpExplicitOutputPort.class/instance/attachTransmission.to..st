attaching
attachTransmission: aTransmission to: aPresenter

	aPresenter whenUpdatedDo: [ :somePresenter |
		self halt.
		self 
			transmitWith: aTransmission
			value: (self applyTransform: somePresenter) ]
		