baselines
baseline: spec
	<baseline>

	spec for: #common do: [
		spec postLoadDoIt: #postLoad.
		
		spec baseline: 'VMMaker'
				with:[ 
					"This may be executed multiple times, does not matter, it'll fail immediatly"
					LibC runCommand: 'git clone https://github.com/pharo-project/pharo-vm.git --depth=1'.
					spec repository: 'tonel:///' , 
					(FileSystem workingDirectory / 'pharo-vm' / 'smalltalksrc') pathString ].
		
		spec package: 'Polyphemus-Helper'.
		spec package: 'Polyphemus-Memory'.
		spec package: 'Polyphemus-Object'.
		spec package: 'Polyphemus-Tests'.
		spec package: 'Polyphemus-Builder'.
	].
