looptime = 0.5 --export: Seconds between color changes
debug = false --export: Spams your console with too much info

RedStart = 0 --export: Where this color starts (0 is black, 255 is 100%)
RedSpeed = 255 --export: How much this color changes each loop
RedRandom = 0 --export: A random number (up to this) to add or subtract to this color.
RedRev = false --export: If True color reverses when it reaches the end instead of starting over

GreenStart = 0 --export: Where this color starts (0 is black, 255 is 100%)
GreenSpeed = 255 --export: How much this color changes each loop
GreenRandom = 0 --export: A random number (up to this) to add or subtract to this color.
GreenRev = false --export: If True color reverses when it reaches the end instead of starting over

BlueStart = 0 --export: Where this color starts (0 is black, 255 is 100%)
BlueSpeed = 255 --export: How much this color changes each loop
BlueRandom = 0 --export: A random number (up to this) to add or subtract to this color.
BlueRev = false --export: If True color reverses when it reaches the end instead of starting over

AllColorRandom = 0 --export: A random number (up to this) to add or subtract to all colors. Good for keeping colors in sync with each other.
LoopRandom = 0.5 --export: A random number (up to this) to add or subtract to the loop delay.

-- Configuration ends here

R = RedStart
G = GreenStart
B = BlueStart

Lights = findElements("LightUnit")
LightCount = tableLen(Lights)

if LightCount < 1 then
    system.print("Link lights to this PB before activating")
    unit.exit()
end

if LoopRandom > looptime then
    system.print("LoopRandom cannot be greater than looptime")
    unit.exit()
end

if debug then
    system.print("Found " .. LightCount .. " lights")
end

for i = 1, LightCount do
    Lights[i].activate()
    Lights[i].setRGBColor(R, G, B)
    if debug then system.print("Light "..i.." activated and set to : "..R..","..G..","..B) end
end

unit.hide()

unit.setTimer("loop", looptime)