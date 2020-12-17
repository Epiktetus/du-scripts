MyScreen.clear()
smallsize = fsize - 1
html = "<style></style>"
html = html .. "<div style='font-size:" .. smallsize .. "vw'><table style='width:96%;margin-left:2%'>"

for i = 1, IndustryCount do
    html = html .. "<tr><td>" .. MyCore.getElementNameById(Industries[i].getId()) .. "</td>"
    html = html .. "<td style='text-align:right;font-size:" .. fsize .. "vw'>" ..
               prettyStatus(Industries[i].getStatus()) .. "</td></tr>"
end

html = html .. "</table></div>"
MyScreen.setHTML(html)
