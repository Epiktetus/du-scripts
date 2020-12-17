function findDB()
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "DataBankUnit" then
                    return value
                end
            end
        end
    end
    return 0
end

function findScreens()
    local screens = {}
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == "ScreenUnit" then
                    if value == ControlScreen then
                        system.print("Skipping Control Screen")
                    else
                        ChildScreenCount = ChildScreenCount + 1
                        table.insert(screens, value)
                    end
                end
            end
        end
    end
    return screens
end

function updateScreens(text)
    for i = 1, ChildScreenCount do
        ChildScreens[i].setCenteredText(text)
    end
    DB.setStringValue("CurrentAlert",text)
end

function updateScreensFancy(color,text)
    html=[[
        <style>
            @keyframes pulse {
                from {font-size:10vw}
                to {font-size:18vw}
            }
        </style>
        <div class="bootstrap" style="
        animation-name:pulse;
        animation-duration:1s;
        animation-iteration-count: infinite; 
        animation-direction: alternate;
        color:]]..color..[[">
        ]]..text..[[</div>
        ]]
    for i = 1, ChildScreenCount do
        ChildScreens[i].setHTML(html)
    end
    DB.setStringValue("CurrentAlert",html)
end

function screenTouched(x, y)
    if x < .50 and y < .50 then
        updateScreens("")
        ControlScreen.resetContent(GreenBox, boxHTML("Green", "Green Alert",false))
        ControlScreen.resetContent(YellowBox, boxHTML("Yellow", "Yellow Alert",false))
        ControlScreen.resetContent(RedBox, boxHTML("Red", "Red Alert",false))
    end
    if x > .50 and y < .50 then
        updateScreensFancy("Green","Green<br>Alert")
        ControlScreen.resetContent(GreenBox, boxHTML("Green", "Green Alert",true))
        ControlScreen.resetContent(YellowBox, boxHTML("Yellow", "Yellow Alert",false))
        ControlScreen.resetContent(RedBox, boxHTML("Red", "Red Alert",false))
    end
    if x < .50 and y > .50 then
        updateScreensFancy("Yellow","Yellow<br>Alert")
        ControlScreen.resetContent(GreenBox, boxHTML("Green", "Green Alert",false))
        ControlScreen.resetContent(YellowBox, boxHTML("Yellow", "Yellow Alert",true))
        ControlScreen.resetContent(RedBox, boxHTML("Red", "Red Alert",false))
    end
    if x > .50 and y > .50 then
        updateScreensFancy("Red","Red<br>Alert")
        ControlScreen.resetContent(GreenBox, boxHTML("Green", "Green Alert",false))
        ControlScreen.resetContent(YellowBox, boxHTML("Yellow", "Yellow Alert",false))
        ControlScreen.resetContent(RedBox, boxHTML("Red", "Red Alert",true))
    end
end

function boxHTML(color, text, active)
    if active then
        border = "border:2vw solid;"
    else
        border = "border:0.5vw solid;"
    end
    style = "font-size:10vw;width:50vw;height:30vw;"
    style = style .. "color:" .. color .. ";"
    style = style .. border
    html = [[
        <div style="]] .. style .. [[">
        ]] .. text .. [[
        </div>
    ]]
    return html
end
