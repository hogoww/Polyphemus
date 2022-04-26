baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		spec preLoadDoIt: #'preload:package:'.
		spec package: 'Polyphemus-Memory'.
		spec package: 'Polyphemus-Object'.
		spec package: 'Polyphemus-Tests'.
	]