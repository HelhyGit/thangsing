local HttpService = game:GetService("HttpService")
local placeId = game.PlaceId

local UniverseID = HttpService:JSONDecode(
    game:HttpGet("https://apis.roblox.com/universes/v1/places/" .. placeId .. "/universe")
).universeId

if placeId == 7449423635 or placeId == 2753915549 or placeId == 4442272183 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HelhyGit/thangsing/refs/heads/main/BF-Triple.lua"))()
elseif UniverseID == 10260193230 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HelhyGit/thangsing/refs/heads/main/Memesea.lua"))()
else
    print("Game not supported by Triple Hub scripts.")
end
