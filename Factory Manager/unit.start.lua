fsize = 6 -- export: Font Size
looptime = 2 -- export: Seconds between screen updates

loops = 0
MyScreen = findScreen()
MyCore = findCore()
IndustryCount = 0
Industries = {}

if MyScreen == 0 then
    system.print("No screen found. Please link a screen for output.")
    unit.exit()
end
if MyCore == 0 then
    system.print("No core found. Please link a core to get details from.")
    unit.exit()
end
MyScreen.activate()
MyScreen.clear()
MyScreen.addText(0, 0, fsize, "Display Found...")

MyScreen.addText(0, 10, fsize, "Core Found...")
findIndustries()
MyScreen.addText(0, 20, fsize, IndustryCount .. " Industries Found")
if IndustryCount == 0 then
    system.print("No industries found. Please link any industries you would like the status of.")
    unit.exit()
end
MyScreen.addText(0, 30, fsize, "Starting Loop...")
unit.setTimer("loop", looptime)
MyScreen.addText(0, 40, fsize, "Waiting for update...")
unit.hide()