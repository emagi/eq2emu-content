--[[
    Script Name    : ZoneScripts/Castleview.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.21 05:02:52
    Script Purpose : 
                   : 
--]]

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone,770.58, -17.21, -113.26, 9, "FountOfValor","LeaveLocation")
end

function player_entry(Zone, Player)
      SendPopUpMessage(Player, "Castleview Hamlet", 255, 255, 255)
      if GetBoundZoneID(Player) == nil then
    if GetRace(Player) == 4 or GetRace(Player) == 8 then
        Bind(Player, GetX(Player),GetY(Player),GetZ(Player),GetHeading(Player))
    else end
end
end

function FountOfValor(Zone,Player)
      SendPopUpMessage(Player, "Fountain of Valor", 255, 255, 0)
    end