--[[
    Script Name    : ZoneScripts/IsleRefuge1.lua
    Script Author  : Image
    Script Date    : 2025.08.2025 15:26:32
    Script Purpose : Restrict Players in starting/tutorial zones from exceeding level 6, or 220% experience per Classic design.
                   : 
--]]
local specialZones = {
    [26] = true, -- FarJourneyQeynos
    [27] = true, -- FarJourneyFreeport
    [253] = true, -- QueensColony
    [254] = true, -- SourceEvil
    [255] = true, -- MizansCellar
    [278] = true, -- OutpostOverlord
    [314] = true, -- IsleRefuge2
    [324] = true, -- GrimgashsLair
    [325] = true, -- IsleRefuge1
    [348] = true, -- CircleElders
    [450] = true, -- SmallHideout
    [665] = true, -- DaratharsFlight
    [770] = true, -- GrozmagsTrial
    [775] = true, -- exp12_dun_ancientruins
    [804] = true, -- home_tutorial
    [828] = true, -- ClassicFarJourney
    [838] = true, -- GaranelRestingPlace
    [846] = true -- LCP
}

local archetypeClasses = {
    [1] = true, -- fighter
    [11] = true, -- priest
    [21] = true, -- mage
    [31] = true -- scout
}

local lowerClasses = {
    [2] = true, -- warrior
    [5] = true, -- brawler
    [6] = true, -- monk
    [8] = true, -- crusader
    [12] = true, -- cleric
    [15] = true, -- druid
    [18] = true, -- shaman
    [22] = true, -- sorcerer
    [23] = true, -- wizard
    [25] = true, -- enchanter
    [28] = true, -- summoner
    [32] = true, -- rogue
    [35] = true, -- bard
    [38] = true, -- predator
    [41] = true, -- animalist
    [43] = true -- shaper
}
require "SpawnScripts/Generic/ClassChangeModule"
function on_level_up_complete(Zone, Player, OldLevel, NewLevel, ExpEarned)
    local needsRefresh = GetInfoStructString(Player, "refresh_advspells")
    if needsRefresh == "true" then
        SendNewAdventureSpells(Player)
        SetInfoStructString(Player, "refresh_advspells", "") -- clear out since we set the adventure class
    end
end

function on_level_up(Zone, Player, OldLevel, NewLevel, ExpEarned)
    local zoneID = GetZoneID(Zone)
    local playerClass = GetClass(Player)
    if (archetypeClasses[playerClass] and NewLevel > 9) or (lowerClasses[playerClass] and NewLevel > 19) then
        try_class_update(Player, NewLevel)
        playerClass = GetClass(Player)
    end
    if GetClass(Player) == 0 then
        return validate_level_xp(
            Player,
            OldLevel,
            NewLevel,
            ExpEarned,
            3,
            "You must select your archetype to gain levels."
        )
    elseif specialZones[zoneID] then
        return validate_level_xp(Player, OldLevel, NewLevel, 6, "You must leave the Isle to gain levels.")
    end
    elseif archetypeClasses[playerClass] then
        return validate_level_xp(Player, OldLevel, NewLevel, ExpEarned, 9, "You must choose your class to gain levels.")
    elseif lowerClasses[playerClass] then
        return validate_level_xp(
            Player,
            OldLevel,
            NewLevel,
            ExpEarned,
            19,
            "You must choose your sub-class to gain levels."
        )
    end
end

function try_class_update(Player, NewLevel)
    local classSelect = GetInfoStructString(Player, "adventure_class_selection")
    if classSelect ~= "" then
        PromoteByKeyStrict(Player, classSelect)
        SetInfoStructString(Player, "adventure_class_selection", "") -- clear out since we set the adventure class
    end
end

function validate_level_xp(Player, OldLevel, NewLevel, ExpEarned, MaxLevel, Message)
    local currentXP = GetInfoStructUInt(Player, "xp")
    local MaxLvlPlus = MaxLevel + 1
    local maxXP =
        tonumber(GetExpRequiredByLevel(MaxLvlPlus)) + tonumber(GetExpRequiredByLevel(MaxLvlPlus)) +
        tonumber(GetExpRequiredByLevel(MaxLvlPlus) * .2) -
        ExpEarned
    if NewLevel > MaxLevel or (OldLevel == MaxLevel and currentXP > maxXP) then
        if currentXP > maxXP then
            SendPopUpMessage(
                Player,
                "You cannot gain anymore experience until you gain your next level.",
                255,
                255,
                255
            )
            SetInfoStructUInt(Player, "xp", maxXP)
            SetCharSheetChanged(Player, true)
        end
        SendPopUpMessage(Player, Message, 255, 255, 255)
        return -1
    end

    return 1
end
