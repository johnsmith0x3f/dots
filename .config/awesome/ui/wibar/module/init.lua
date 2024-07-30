-- Return a table containing all bar modules, with a name attached
-- to each.
return {
  time = require(... .. ".time"),
  progress = require(... .. ".progress"),
  systray = require(... .. ".systray"),
  profile = require(... .. ".profile"),

  -- LEFT SIDE
  launcher = require(... .. ".launcher"),
  taglist = require(... .. ".taglist"),
  layout = require(... .. ".layout"),
}
