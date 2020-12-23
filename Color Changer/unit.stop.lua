for i = 1, LightCount do
    Lights[i].deactivate()
    Lights[i].setRGBColor(0,0,0)
end

if tableLen(Screen)>0 then
    Screen[1].deactivate()
    Screen[1].clear()
end