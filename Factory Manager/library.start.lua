function findScreen()
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "ScreenUnit" then
                    return value
                end
            end
        end
    end
    return 0
end

function findCore()
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "CoreUnitStatic" then
                    return value
                end
            end
        end
    end
    return 0
end

function findIndustries()
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "IndustryUnit" then
                    IndustryCount = IndustryCount + 1
                    table.insert(Industries, value)
                end
            end
        end
    end
end

function prettyStatus(uglyStatus)
    if uglyStatus == "PENDING" then
        return "<span style='color:yellow'>Pending</span>"
    elseif uglyStatus == "STOPPED" then
        return "<span style='color:grey'>Stopped</span>"
    elseif uglyStatus == "RUNNING" then
        return "<span style='color:green'>Running</span>"
    elseif uglyStatus == "JAMMED_MISSING_INGREDIENT" then
        return "<span style='color:red'>Missing Ingredient</span>"
    elseif uglyStatus == "JAMMED_NO_OUTPUT_CONTAINER" then
        return "<span style='color:red'>No Output</span>"
    else
        return uglyStatus
    end
end

function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end
