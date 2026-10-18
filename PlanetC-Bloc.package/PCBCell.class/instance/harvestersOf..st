removing
harvestersOf: aHousehold
	^ harvesters select: [ :each | each household == aHousehold ]