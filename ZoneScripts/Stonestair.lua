--[[
    Script Name    : ZoneScripts/Stonestair.lua
    Script Author  : n3veruary
    Script Date    : 2024.06.17 01:06:23
    Script Purpose : Governs zone behavior of Stonestair Byway.
                   : 
--]]

function init_zone_script(Zone)

end

function player_entry(Zone, Player)
if GetBoundZoneID(Player) == nil then
    if GetRace(Player) == 3 or GetRace(Player) == 11 then
        Bind(Player, GetX(Player),GetY(Player),GetZ(Player),GetHeading(Player))
    else end
end
end

