eleMaxHp = MyCore.getElementMaxHitPointsById
eleHp = MyCore.getElementHitPointsById
local elementsID = MyCore.getElementIdList()
local maxShipHP = eleTotalMaxHp
count = 0

style = [[
<style type="text/css">
    .red {color: red; font-size:]]..fsize..[[vw;}
    .yellow {color: yellow; font-size:]]..fsize..[[vw;}
    .name {font-size:]]..fsize..[[vw;}
    .green {color: green; font-size:10vw;text-align:center;}
    .footer {font-size:5vw; text-align:right; position:absolute; bottom:0vw}
</style>
]]
html = '<div>'
for k in pairs(elementsID) do
    local hp = 0
    local mhp = 0
    mhp = eleMaxHp(elementsID[k])
    hp = eleHp(elementsID[k])
    if (hp == 0) then
        html = html .. '<b class="red">Destroyed</b><b class="name">' .. MyCore.getElementNameById(elementsID[k]) .. '</b><br>'
        count = count + 1
    elseif (hp < mhp) then
        html =
            html .. '<b class="yellow">' .. string.format("%.1f", hp) .. '/' .. string.format("%1d", mhp) .. '</b><b class="name">' ..
                MyCore.getElementNameById(elementsID[k]) .. '</b><br>'
        count = count + 1
    end
end

if count == 0 then
    html = html .. '<b class="green">No Damage Found</b></div>'
else
    html = html .. '</div>'
end

html = html .. '<div class="footer">Scanning every ' .. looptime .. ' seconds</div>'
MyScreen.setHTML(style..html)