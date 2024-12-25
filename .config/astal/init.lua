local App = require("astal.gtk3.app")

App:start({
	instance_name = "astal",
	main = function()
		local Bar = require("widget.bar")

		Bar(0)
	end
})
