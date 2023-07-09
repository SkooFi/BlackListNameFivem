local blackName = {"SKooFi" , "Sloomi" , "cw.lh" , "Byhotboy"} -- black list
local Reason = "Reason:" -- kick Reason

AddEventHandler("playerConnecting", function(playerName, setKickReason)
    for name in pairs(blackName) do
        if (string.gsub(string.gsub(string.gsub(string.gsub(playerName:lower(), "-", ""), ",", ""), "%.", ""), " ", ""):find(blackName[name])) then
            setKickReason(Reason)
            CancelEvent()
            break
        end
    end
end)
