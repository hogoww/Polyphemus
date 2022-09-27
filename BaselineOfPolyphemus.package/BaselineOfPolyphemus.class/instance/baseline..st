baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		spec postLoadDoIt: #postLoad.
		
		spec baseline: 'VMMaker'
				with:[ spec repository: 'github://pharo-project/OpenSmalltalk-VM:pharoX' ].
		spec package: 'Polyphemus-Memory'.
		spec package: 'Polyphemus-Object'.
		spec package: 'Polyphemus-Tests'.
	].
