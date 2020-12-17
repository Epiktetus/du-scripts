debug = false -- export: If true then show debug info in console
looptime = 2 -- export: Seconds between screen updates

showOnScreensBig("Starting up in " .. looptime .. " seconds")

unit.setTimer("loop", looptime)
unit.hide()
