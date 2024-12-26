local App = require("astal.gtk3.app")
local Variable = require("astal.variable")
local Widget = require("astal.gtk3.widget")

local function Time(format)
	local time = Variable(""):poll(1000, function()

	end)
end

return function(monitor)
	local Anchor = require("astal.gtk3").Astal.WindowAnchor

	return Widget.Window({
		--title = "bar",
		monitor = monitor,

		class_name = "bar",
		anchor = Anchor.TOP + Anchor.LEFT + Anchor.RIGHT,
		exclusivity = "EXCLUSIVE",

		Widget.CenterBox({
			Widget.Box({
				"temp"
			}),
			Widget.Box({
				"temp"
			}),
			Widget.Box({
				"temp"
			})
		})
	})
end
