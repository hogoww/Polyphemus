attaching
attachTransmission: aTransmission to: aPresenter

	aPresenter whenUpdatedDo: [ :somePresenter |
		self 
			transmitWith: aTransmission
			value: (self applyTransform: somePresenter) ]
		