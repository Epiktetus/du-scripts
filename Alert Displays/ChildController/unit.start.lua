looptime = 2 --export: Seconds between screen updates
text = ""

function findDB()
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "DataBankUnit" then
                    return value
                end
            end
        end
    end
    return 0
end

function findScreens()
    local screens = {}
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "ScreenUnit" then
                    ChildScreenCount = ChildScreenCount + 1
                    table.insert(screens, value)
                end
            end
        end
    end
    return screens
end

ChildScreenCount = 0
ChildScreens = findScreens()
DB = findDB()

if DB == 0 then
    system.print("connect a DataBank")
    unit.exit()
end

unit.setTimer("update", looptime)
unit.hide()