function showOnScreens(html)
    screen.setHTML(html)
    screen2.setHTML(html)
end

function showOnScreensBig(message)
    beginhtml = [[<div class="bootstrap" style="font-size:8vw;">]]
    endhtml = [[</div>]]
    screen.setHTML(beginhtml .. message .. endhtml)
    screen2.setHTML(beginhtml .. message .. endhtml)
end

function screenTouched(x, y)
    if debug then
        system.print("Screen touched at " .. x .. ", " .. y)
    end

    if x < 0.5 and y < 0.5 then --top left
        d1Touch()
    end

    if x > 0.5 and y < 0.5 then --top right
        d2Touch()
    end

    if x < 0.5 and y > 0.5 then --bottom left
        d3Touch()
    end

end

function d1Touch()
    if door.getState() == 1 then
        door.deactivate()
    else
        door.activate()
    end
end

function d2Touch()
    if door.getState() == 1 then
        door.deactivate()
    else
        door.activate()
    end
end

function d3Touch()
    if lights.getState() == 1 then
        lights.deactivate()
    else
        lights.activate()
    end
end

LockIcon = [[<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="10%" height="10%" viewBox="212.7332000732422 402.33197021484375 115.68244171142578 139.5233154296875" preserveAspectRatio="xMinYMin meet" ><rect id="svgEditorBackground" x="0" y="0" width="540" height="1000" style="fill:none; stroke: none;"/><defs id="svgEditorDefs"><polygon id="svgEditorIconDefs" style="fill:rosybrown;"/><polygon id="svgEditorShapeDefs" style="fill:white;stroke:black;vector-effect:non-scaling-stroke;stroke-width:1px;"/></defs><path d="M26.729411764705997,-74.9176470588234c-17.7,0,-32,14.3,-32,32v24h-8c-4.6,0.8,-8,4.8,-8,9.6v52.6c0,5.4,4.4,9.8,9.8,9.8h76.4c5.4,0,9.8,-4.4,9.8,-9.8v-52.6c0,-4.8,-3.5,-8.8,-8,-9.6h-8v-24c0,-17.7,-14.3,-32,-32,-32ZM2.729411764705933,-42.917647058823405c0,-13.3,10.7,-24,24,-24s24,10.7,24,24v24h-48v-24ZM30.72941176470601,19.9823529411766v9.1c0,2.2,-1.8,4,-4,4s-4,-1.8,-4,-4v-9.1c-2.4,-1.4,-4,-4,-4,-6.9c0,-4.4,3.6,-8,8,-8s8,3.6,8,8c0,3,-1.6,5.5,-4,6.9Z" style="fill:white; stroke:black; vector-effect:non-scaling-stroke;stroke-width:1px;" id="e1_shape" transform="matrix(1 0 0 1 242.785 482.418)"/></svg>]]
LinkIcon = [[<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="10%" height="10%" viewBox="96.06541442871094 279.4846496582031 178.3944549560547 177.4033660888672" preserveAspectRatio="xMidYMid meet" ><rect id="svgEditorBackground" x="0" y="0" width="540" height="1000" style="fill:none; stroke: none;"/><defs id="svgEditorDefs"><polygon id="svgEditorIconDefs" style="fill:white;"/><symbol xmlns="http://www.w3.org/2000/svg" id="f0c1" preserveAspectRatio="xMidYMid meet" viewBox="0 0 512 512"><path d="M326.612 185.391c59.747 59.809 58.927 155.698.36 214.59-.11.12-.24.25-.36.37l-67.2 67.2c-59.27 59.27-155.699 59.262-214.96 0-59.27-59.26-59.27-155.7 0-214.96l37.106-37.106c9.84-9.84 26.786-3.3 27.294 10.606.648 17.722 3.826 35.527 9.69 52.721 1.986 5.822.567 12.262-3.783 16.612l-13.087 13.087c-28.026 28.026-28.905 73.66-1.155 101.96 28.024 28.579 74.086 28.749 102.325.51l67.2-67.19c28.191-28.191 28.073-73.757 0-101.83-3.701-3.694-7.429-6.564-10.341-8.569a16.037 16.037 0 0 1-6.947-12.606c-.396-10.567 3.348-21.456 11.698-29.806l21.054-21.055c5.521-5.521 14.182-6.199 20.584-1.731a152.482 152.482 0 0 1 20.522 17.197zM467.547 44.449c-59.261-59.262-155.69-59.27-214.96 0l-67.2 67.2c-.12.12-.25.25-.36.37-58.566 58.892-59.387 154.781.36 214.59a152.454 152.454 0 0 0 20.521 17.196c6.402 4.468 15.064 3.789 20.584-1.731l21.054-21.055c8.35-8.35 12.094-19.239 11.698-29.806a16.037 16.037 0 0 0-6.947-12.606c-2.912-2.005-6.64-4.875-10.341-8.569-28.073-28.073-28.191-73.639 0-101.83l67.2-67.19c28.239-28.239 74.3-28.069 102.325.51 27.75 28.3 26.872 73.934-1.155 101.96l-13.087 13.087c-4.35 4.35-5.769 10.79-3.783 16.612 5.864 17.194 9.042 34.999 9.69 52.721.509 13.906 17.454 20.446 27.294 10.606l37.106-37.106c59.271-59.259 59.271-155.699.001-214.959z"/></symbol></defs><use xlink:href="#f0c1" x="104.985" y="288.404" width="159.564" height="159.564" id="e1_icon" style="fill:white;"/></svg>]]