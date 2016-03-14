# index.litcoffee
the main module exported by the package

	module.exports = class Footprints extends Array
		constructor: (data = []) ->
			super
			for datum in data
				@visit datum

		visit: (footprint) ->
			# assume no dups, only remove one
			for idx in [0...@length]
				if @[idx].href is footprint.href
					@splice idx, 1
					break

			@unshift footprint