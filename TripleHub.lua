local HttpService = game:GetService("HttpService")
local PlaceId = game.PlaceId
local UniverseID

local success, result = pcall(function()
    return HttpService:JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/" .. PlaceId .. "/universe"))
end)

if success and result and result.universeId then
    UniverseID = result.universeId
    print("[Debug] UniverseID fetched successfully: " .. UniverseID)
else
    warn("[Error] Failed to fetch UniverseID.")
end

if PlaceId == 7449423635 or PlaceId == 2753915549 or PlaceId == 4442272183 then
    print("[Debug] Loading Blox Fruits script...")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HelhyGit/thangsing/refs/heads/main/BF-Triple.lua"))()
elseif UniverseID == 10260193230 then
    print("[Debug] Loading Murder Mystery script...")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HelhyGit/thangsing/refs/heads/main/Memesea.lua"))()

else
    warn("[Warning] No compatible script found for this experience.")
    warn("[Info] PlaceId: " .. PlaceId .. " | UniverseID: " .. tostring(UniverseID))
end
