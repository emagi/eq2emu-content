--[[
    Script Name    : ZoneScripts/Longshadow.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.14 11:10:34
    Script Purpose : 
                   : 
--]]

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone,-0.58, 2.07, -0.01, 12, "KnowledgePortal","LeaveLocation")

end

function player_entry(Zone, Player)
      SendPopUpMessage(Player, "Longshadow Alley", 255, 255, 255)
      if GetBoundZoneID(Player) == nil then
    if GetRace(Player) == 1 then
        Bind(Player, GetX(Player),GetY(Player),GetZ(Player),GetHeading(Player))
    else end
end
end

function KnowledgePortal(Zone,Player)
      SendPopUpMessage(Player, "The Destroyed Knowledge Portal", 255, 255, 0)
    end