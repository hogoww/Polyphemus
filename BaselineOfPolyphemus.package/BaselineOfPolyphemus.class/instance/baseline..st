baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		spec postLoadDoIt: #postLoad.
		spec package: 'Polyphemus-Helper'.
		spec package: 'Polyphemus-Memory'.
		spec package: 'Polyphemus-Object'.
		spec package: 'Polyphemus-Tests'.
		spec package: 'Polyphemus-Builder'.
	].
