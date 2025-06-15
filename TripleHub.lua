local HttpService = game:GetService("HttpService")
local PlaceId = game.PlaceId

local UniverseID
do
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/" .. PlaceId .. "/universe"))
    end)

    if success and result and result.universeId then
        UniverseID = result.universeId
    end
end

if PlaceId == 7449423635 or PlaceId == 2753915549 or PlaceId == 4442272183 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HelhyGit/thangsing/refs/heads/main/BF-Triple.lua"))()

elseif UniverseID == 10260193230 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HelhyGit/thangsing/refs/heads/main/Memesea.lua"))()
end
