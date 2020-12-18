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

function cleanColor(C, ColorSpeed, ColorRev)
    C = math.floor(C)
    if C > 255 then
        if ColorRev then
            C = 255
            ColorSpeed = ColorSpeed * -1
        else
            C = 0
        end
    end
    if C < 0 then
        if ColorRev then
            C = 0
            ColorSpeed = ColorSpeed * -1
        else
            C = 255
        end
    end
    return C,ColorSpeed
end

function myRand(max)
    x = math.random()
    x = (x*(max * 2))-max
    return x
end

function tableLen(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    return count
end

function debugPrint(msg)
    if debug then
        system.print(msg)
    end
end