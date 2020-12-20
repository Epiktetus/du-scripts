function findElements(ClassName)
    local FoundElements = {}
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == ClassName then
                    table.insert(FoundElements, value)
                end
            end
        end
    end
    return FoundElements
end

function tableLen(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    return count
end