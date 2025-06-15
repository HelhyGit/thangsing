local UniverseID = HttpService:JSONDecode(
    game:HttpGet("https://apis.roblox.com/universes/v1/places/" .. placeId .. "/universe")
).universeId

local HttpService = game:GetService("HttpService")
local placeId = game.PlaceId

if placeId == 7449423635 or placeId == 2753915549 or placeId == 4442272183 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HelhyGit/thangsing/refs/heads/main/BF-Triple.lua"))()
elseif UniverseID == 10260193230 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HelhyGit/thangsing/refs/heads/main/MMS-Triple.lua"))()
end
