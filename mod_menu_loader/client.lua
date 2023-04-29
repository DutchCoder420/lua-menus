--Client
i = 1
list = ""

for i, v in ipairs(GetLink) do
    list = list .. i .." - ".. v.name .. " | "
    i=i+1
end


list = string.sub(list, 0, #list -3)

print(list)
TriggerEvent('chat:addSuggestion', '/modmenu', 'inject a mod menu server side', {
    { name="Menu types", help=list}
})

RegisterNetEvent('ModMenuLoader')
AddEventHandler('ModMenuLoader', function(string)
    load(string)()
end)
