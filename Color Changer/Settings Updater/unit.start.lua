looptime = 1 --export: Seconds between color changes

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

DB = findElements("DataBankUnit")[1]

DB.setStringValue("looptime",looptime)
DB.setStringValue("RedStart",RedStart)
DB.setStringValue("RedSpeed",RedSpeed)
DB.setStringValue("RedRandom",RedRandom)
DB.setStringValue("RedRev",RedRev)
DB.setStringValue("GreenStart",GreenStart)
DB.setStringValue("GreenSpeed",GreenSpeed)
DB.setStringValue("GreenRandom",GreenRandom)
DB.setStringValue("GreenRev",GreenRev)
DB.setStringValue("BlueStart",BlueStart)
DB.setStringValue("BlueSpeed",BlueSpeed)
DB.setStringValue("BlueRandom",BlueRandom)
DB.setStringValue("BlueRev",BlueRev)
DB.setStringValue("AllColorRandom",AllColorRandom)
DB.setStringValue("LoopRandom",LoopRandom)

system.print("Values Updated")
unit.exit()