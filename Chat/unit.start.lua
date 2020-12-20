Messages = {}
screen = findElements("ScreenUnit")[1]
if #screen < 1 then
    system.print("No screen found")
end
system.print("Press enter, type your message, then press enter again")