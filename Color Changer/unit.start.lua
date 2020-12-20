looptime = 0.25 --export: Seconds between color changes
updatetime = 2 --export: Seconds between updates from a connected Databank
debug = true --export: Spams your console with too much info

RedStart = 0 --export: Where this color starts (0 is black, 255 is 100%)
RedSpeed = 255 --export: How much this color changes each loop
RedRandom = 0 --export: A random number (up to this) to add or subtract to this color.
RedRev = false --export: If True color reverses when it reaches the end instead of starting over

GreenStart = 0 --export: Where this color starts (0 is black, 255 is 100%)
GreenSpeed = 0 --export: How much this color changes each loop
GreenRandom = 0 --export: A random number (up to this) to add or subtract to this color.
GreenRev = false --export: If True color reverses when it reaches the end instead of starting over

BlueStart = 255 --export: Where this color starts (0 is black, 255 is 100%)
BlueSpeed = 255 --export: How much this color changes each loop
BlueRandom = 0 --export: A random number (up to this) to add or subtract to this color.
BlueRev = false --export: If True color reverses when it reaches the end instead of starting over

AllColorRandom = 0 --export: A random number (up to this) to add or subtract to all colors. Good for keeping colors in sync with each other.
LoopRandom = 0 --export: A random number (up to this) to add or subtract to the loop delay.

-- Configuration ends here

R = RedStart
G = GreenStart
B = BlueStart

Lights = findElements("LightUnit")
LightCount = tableLen(Lights)
DB = findElements("DataBankUnit")
Screen = findElements("ScreenUnit")

unit.hide()

if tableLen(Screen)>0 then
    for i = 1, tableLen(Screen) do
    	Screen[i].activate()
    	Screen[i].setCenteredText("Light Changer Screen "..i)
    end
end

if tableLen(DB)>1 then
    system.print("Only one Databank is supported.")
end

if LightCount < 1 then
    system.print("Link lights to this PB before activating")
    unit.exit()
end

if LoopRandom > looptime then
    system.print("LoopRandom cannot be greater than looptime")
    unit.exit()
end

debugPrint("Found " .. LightCount .. " lights")

for i = 1, LightCount do
    Lights[i].activate()
    Lights[i].setRGBColor(R, G, B)
    debugPrint("Light "..i.." activated and set to : "..R..","..G..","..B)
end

if tableLen(DB) > 0 then
    unit.setTimer("update", updatetime)
end

unit.setTimer("loop", looptime)