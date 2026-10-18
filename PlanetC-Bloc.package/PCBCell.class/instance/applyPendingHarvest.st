testing
applyPendingHarvest
	biomassToApply >= 0 ifTrue: [
		self biomass: biomassToApply.
		biomassToApply := -1 ]