Messages = {}
local screens = findElements("ScreenUnit")
local dbs = findElements("DataBankUnit")

if #screens < 1 then
    system.print("No screen found")
else
    screen = screens[1]
end

if #dbs < 1 then
    system.print("No databanks found")
else
    db = dbs[1]
end


--WARNING: Uncommenting the next line will delete all stored values on the DataBank
--db.clear()

updateDisplay()

system.print("Press enter, type your message, then press enter again")