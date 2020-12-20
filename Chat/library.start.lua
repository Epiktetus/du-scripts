templateStyle = [[<style>
  .chatline {
    padding:.5vw;
    font-size:3vw;
  }
  .username {
    background:green;
    border-radius:1vw;
    padding:.2vw;
  }
</style>]]
templateHead = [[<div class=chatlog>]]
templateLineStart = [[<div class=chatline>]]
templateUserStart = [[<span class=username>]]
templateUserEnd = [[</span>]]
templateLineEnd = [[</div>]]
templateFoot = [[</div>]]

function addMessage(text)
    table.insert(Messages, templateLineStart..
        templateUserStart..
        database.getPlayer(id).name..
        templateUserEnd..
        text..
        templateLineEnd
    )
end

function updateDisplay()
    MessagesHTML = "/n"
    for key,msg in pairs(Messages) do
        MessagesHTML = MessagesHTML.."/n"..msg
    end
    screen.setHTML(templateStyle..templateHead..MessagesHTML..templateFoot)
end

function findElements(ClassName)
    local FoundElements = {}
    for key, value in pairs(unit) do
        if type(value) == "table" and type(value.export) == "table" then
            if value.getElementClass then
                if value.getElementClass() == ClassName then
                    table.insert(FoundElements, value)
                end
            end
        end
    end
    return FoundElements
end

function tableLen(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    return count
end