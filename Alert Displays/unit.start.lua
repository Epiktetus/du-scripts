ChildScreenCount = 0
ChildScreens = findScreens()
DB = findDB()
if DB == 0 then
    system.print("connect a DataBank for more than 9 screens")
end

if ChildScreenCount == 0 then
    system.print("Connect screens before starting")
    unit.exit()
end
    system.print("Found " .. ChildScreenCount .. " screens")

for i = 1, ChildScreenCount do
    ChildScreens[i].activate()
    ChildScreens[i].clear()
end

ControlScreen.activate()
ControlScreen.clear()
ControlScreen.addContent(0, 0, boxHTML("White", "Clear Alert",false))
GreenBox = ControlScreen.addContent(50, 0, boxHTML("Green", "Green Alert",false))
YellowBox = ControlScreen.addContent(0, 50, boxHTML("Yellow", "Yellow Alert",false))
RedBox = ControlScreen.addContent(50, 50, boxHTML("Red", "Red Alert",false))
unit.hide()