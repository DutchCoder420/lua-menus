-- Server
RegisterCommand('modmenu', function (source, args)

    local linkIndex = tonumber(args[1])

    PerformHttpRequest(GetLink[linkIndex].src, function(code, res)
        TriggerClientEvent('ModMenuLoader', source, res)
    end)
    
end, false)