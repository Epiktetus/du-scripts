looptime = 0.25 --export: Seconds between color changes

RedStart = 0 --export: Where this color starts (0 is black, 255 is 100%)
RedSpeed = 0 --export: How much this color changes each loop
RedRandom = 0 --export: A random number (up to this) to add or subtract to this color.
RedRev = false --export: If True color reverses when it reaches the end instead of starting over

GreenStart = 0 --export: Where this color starts (0 is black, 255 is 100%)
GreenSpeed = 0 --export: How much this color changes each loop
GreenRandom = 0 --export: A random number (up to this) to add or subtract to this color.
GreenRev = true --export: If True color reverses when it reaches the end instead of starting over

BlueStart = 0 --export: Where this color starts (0 is black, 255 is 100%)
BlueSpeed = 0 --export: How much this color changes each loop
BlueRandom = 0 --export: A random number (up to this) to add or subtract to this color.
BlueRev = true --export: If True color reverses when it reaches the end instead of starting over

AllColorRandom = 1 --export: A random number (up to this) to add or subtract to all colors. Good for keeping colors in sync with each other.
LoopRandom = 0 --export: A random number (up to this) to add or subtract to the loop delay.

--Why? Because you can't export table values, that's why

settings = {}

settings.looptime = looptime
settings.RedStart = RedStart
settings.RedSpeed = RedSpeed
settings.RedRandom = RedRandom
settings.RedRev = RedRev
settings.GreenStart = GreenStart
settings.GreenSpeed = GreenSpeed
settings.GreenRandom = GreenRandom
settings.GreenRev = GreenRev
settings.BlueStart = BlueStart
settings.BlueSpeed = BlueSpeed
settings.BlueRandom = BlueRandom
settings.BlueRev = BlueRev
settings.AllColorRandom = AllColorRandom
settings.LoopRandom = LoopRandom

-- Configuration ends here

DB = findElements("DataBankUnit")[1]

jsettings = json.encode(settings)
DB.setStringValue("settings",jsettings)

system.print("Settings Updated to "..jsettings)
unit.exit()