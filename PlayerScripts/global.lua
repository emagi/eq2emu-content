--[[
    Script Name    : ZoneScripts/IsleRefuge1.lua
    Script Author  : Image
    Script Date    : 2025.08.2025 15:26:32
    Script Purpose : Restrict Players in starting/tutorial zones from exceeding level 6, or 220% experience per Classic design.
                   : 
--]]
local specialZones = {
  [26]  = true,  -- FarJourneyQeynos
  [27]  = true,  -- FarJourneyFreeport
  [253] = true,  -- QueensColony
  [254] = true,  -- SourceEvil
  [255] = true,  -- MizansCellar
  [278] = true,  -- OutpostOverlord
  [314] = true,  -- IsleRefuge2
  [324] = true,  -- GrimgashsLair
  [325] = true,  -- IsleRefuge1
  [348] = true,  -- CircleElders
  [450] = true,  -- SmallHideout
  [665] = true,  -- DaratharsFlight
  [770] = true,  -- GrozmagsTrial
  [775] = true,  -- exp12_dun_ancientruins
  [804] = true,  -- home_tutorial
  [828] = true,  -- ClassicFarJourney
  [838] = true,  -- GaranelRestingPlace
  [846] = true,  -- LCP
}

function on_level_up(Zone, Player, OldLevel, NewLevel, ExpEarned)
    local zoneID = GetZoneID(Zone)
    if specialZones[zoneID] then
        local currentXP = GetInfoStructUInt(Player, "xp")
        local maxXP = tonumber(GetExpRequiredByLevel(7)) + tonumber(GetExpRequiredByLevel(7)) + tonumber(GetExpRequiredByLevel(7) * .2) - ExpEarned
        if NewLevel > 6 or (OldLevel == 6 and currentXP > maxXP) then
            if currentXP > maxXP then
                SendPopUpMessage(Player, "You cannot gain anymore experience until you gain your next level.", 255, 255, 255)
                SetInfoStructUInt(Player, "xp", maxXP)
                SetCharSheetChanged(Player, true)
            end
        SendPopUpMessage(Player, "You must leave the Isle to gain levels.", 255, 255, 255)
        return -1
        end
    end
end
