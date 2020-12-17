if door.getState() == 1 then
    doorstate = "open"
    ramp.activate()
    rampstate = "open"
else
    doorstate = "closed"
    ramp.deactivate()
    rampstate = "closed"
end

if lights.getState() == 1 then
    lightstate = "on"
else
    lightstate = "off"
end

style = [[
    <style type="text/css">
        .device {
            position:absolute;
            font-size:10vw;
        }
        .dtitle {
            text-align:center;
            width:100%;
        }
        .dlinkicon {
            position:absolute;
            bottom:8vw;
            right:10vw;
            opacity: 1;
        }
        .dlockicon {
            position:absolute;
            bottom:8vw;
            right:15vw;
            opacity: 0.5;
        }
        .d1 {
            width:50vw; 
            height:30vw;
            border:2vw solid red; 
            font-size:5vw
        }
        .d2 {
            right:0vw; 
            width:50vw; 
            height:30vw;
            border:2vw solid red; 
            font-size:5vw
        }
        .d3 {
            top:30vw; 
            width:50vw; 
            height:30vw;
            border:2vw solid red; 
            font-size:5vw
        }
    </style>
]]
html = [[
    <div class="device d1">
        <div class="dlockicon">]] .. LockIcon .. [[</div>
        <div class="dlinkicon">]] .. LinkIcon .. [[</div>
        <div class="dtitle">Door</div>
        ]] .. doorstate .. [[
    </div>
    <div class="device d2">
        <div class="dlinkicon">]] .. LinkIcon .. [[</div>
        <div class="dtitle">Ramp</div>
        ]] .. rampstate .. [[
    </div>
    <div class="device d3">
        <div class="dlockicon">]] .. LockIcon .. [[</div>
        <div class="dtitle">Lights</div>
        ]] .. lightstate .. [[
    </div>
]]
showOnScreens(style .. html)
