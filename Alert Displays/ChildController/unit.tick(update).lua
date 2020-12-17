if text ~= DB.getStringValue("CurrentAlert") then
    text = DB.getStringValue("CurrentAlert")
    for i = 1, ChildScreenCount do
        ChildScreens[i].setCenteredText(text)
    end
end