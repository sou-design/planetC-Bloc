baselines
baseline: spec

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'Bloc'
			with: [ spec repository: 'github://pharo-graphics/Bloc:master/src' ].
		spec
			package: #'PlanetC-Bloc' with: [ spec requires: #( #Bloc ) ];
			package: #'PlanetC-Bloc-Tests' with: [ spec requires: #( #'PlanetC-Bloc' ) ] ]