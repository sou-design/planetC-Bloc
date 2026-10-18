initialization
initialize
	super initialize.
	biomass := 0.
	biomassToApply := -1.
	nonHarvestTime := 0.
	protected := false.
	harvesters := OrderedCollection new.
	announcer := Announcer new.
	neighbours := #().
	adultBirds := 0.
	newbornBirds := 0.
	nbNewBorns := 0