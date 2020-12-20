oldsettings = jsettings
jsettings = DB[1].getStringValue("settings")

if oldsettings ~= jsettings then
    debugPrint ("Found new settings: "..jsettings)
    settings = json.decode(jsettings)
    unit.setTimer("loop", settings.looptime)
    looptime = settings.looptime
    RedStart = settings.RedStart
    RedSpeed = settings.RedSpeed
    RedRandom = settings.RedRandom
    RedRev = settings.RedRev
    GreenStart = settings.GreenStart
    GreenSpeed = settings.GreenSpeed
    GreenRandom = settings.GreenRandom
    GreenRev = settings.GreenRev
    BlueStart = settings.BlueStart
    BlueSpeed = settings.BlueSpeed
    BlueRandom = settings.BlueRandom
    BlueRev = settings.BlueRev
    AllColorRandom = settings.AllColorRandom
    LoopRandom = settings.LoopRandom
end