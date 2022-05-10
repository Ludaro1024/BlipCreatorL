Config = {}
Config.Blips = {
{x = 216.5447, y = -1407.9435, z = 29.2908, blip = 68, name = "Boat blip", color = 1},
}

for k, marker in pairs(Config.Blips) do
        if marker.blip ~= false then
        
            local name = marker.name or 'Default Blip'
            
            local blip = AddBlipForCoord(marker.x, marker.y, marker.z)
            SetBlipSprite (blip, marker.blip)
            SetBlipScale  (blip, 0.65)
            SetBlipDisplay(blip, 4)
            SetBlipColour (blip, marker.color)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName('STRING') 
            AddTextComponentString(name)
            EndTextCommandSetBlipName(blip)
        end
    end
