removing
removeHarvester: aHarvester
	harvesters remove: aHarvester ifAbsent: [ ^ self  ].
	self notifyChanged