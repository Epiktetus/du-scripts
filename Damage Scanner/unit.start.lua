fsize = 5 -- export: Font Size
looptime = 2 -- export: Seconds between screen updates
debug = false -- export: Shows extra info if true

loops = 0
MyScreen = findScreen()
MyCore = findCore()

MyScreen.activate()
MyScreen.clear()
MyScreen.addText(0, 0, fsize, "Display Found...")
MyScreen.addText(0, 10, fsize, "Core Found...")
MyScreen.addText(0, 30, fsize, "Starting first scan...")
unit.setTimer("scan", looptime)
MyScreen.addText(0, 40, fsize, "Waiting "..looptime.." seconds for update...")
unit.hide()