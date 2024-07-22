--[[
    Script Name    : ZoneScripts/BigBend.lua
    Script Author  : n3veruary
    Script Date    : 2024.06.17 12:06:26
    Script Purpose : Governs zone behavior for Big Bend.
                   : 
--]]

function init_zone_script(Zone)

end

function player_entry(Zone, Player)
if GetBoundZoneID(Player) == nil then
    if GetRace(Player) == 12 or GetRace(Player) == 14 then
        Bind(Player, GetX(Player),GetY(Player),GetZ(Player),GetHeading(Player))
    else end
end
end

