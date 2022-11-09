debugger
compiler

	^ self compilerClass new
		  environment: self oopEnvironment;
		  class: self