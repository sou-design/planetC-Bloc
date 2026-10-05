initialization
initialize
	super initialize.
	biomass := 0.
	protected := false.
	harvesters := OrderedCollection new.
	announcer := Announcer new