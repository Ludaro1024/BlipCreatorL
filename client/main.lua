Config = {}
Config.blips = {
{x = -1041.9, y = -2737.9, z = 20.8, blip = 68, color = 1, name = "Boat blip"},
}

for k, blip in pairs(Config.blips) do
local blip = AddBlipForCoord(blip.x, blip.y, blip.z)
local name = blip.name or 'Blip Name not Set!'
SetBlipSprite (blip, blip.blip)
SetBlipScale  (blip, 0.65)
SetBlipDisplay(blip, 4)
SetBlipColour (blip, blip.color)
SetBlipAsShortRange(blip, true)
BeginTextCommandSetBlipName('STRING') 
AddTextComponentString(name)
EndTextCommandSetBlipName(blip)
end