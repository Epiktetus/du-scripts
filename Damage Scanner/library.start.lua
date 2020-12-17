function findScreen()
    if debug then system.print ("finding screen") end
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "ScreenUnit" then
                    if debug then system.print ("Found screen ID:"..value.getId()) end
                    return value
                end
            end
        end
    end
    system.print("No screen found. Please link a screen for output.")
    unit.exit()
    return 0
end

function findCore()
    if debug then system.print ("finding core") end
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "CoreUnitStatic" then
                    if debug then system.print ("Found Static Core ID:"..value.getId()) end
                    return value
                end
                if value.getElementClass() == "CoreUnitDynamic" then
                    if debug then system.print ("Found Dynamic Core ID:"..value.getId()) end
                    return value
                end
            end
        end
    end
    system.print("No core found. Please link a core to get details from.")
    unit.exit()
    return 0
end