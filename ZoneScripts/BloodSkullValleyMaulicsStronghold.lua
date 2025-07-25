--[[
	Script Name		:	ZoneScripts/BloodSkullValleyMaulicsStronghold.lua
	Script Purpose	:	
	Script Author	:	n3veruary
	Script Date		:	07/24/2025
	Script Notes	:	Governs the initial zone in and event start behavior for the Maulic's Raid.
--]]

function init_zone_script(zone)
SetLocationProximityFunction(zone, -36.14, -48, 762.94, 5, "EventPrep", "Leave")
end

function EventPrep(zone,player)
local drull = GetSpawnByLocationID(zone,380983)
if GetTempVariable(drull,"waveevent") == "nil" then
    AddTimer(drull,1000,"StartWaveEvent")
else end
end

function Leave(zone, player)
end

function player_entry(zone, player)
    SendPopUpMessage(player, "Bloodskull Valley: Maulic's Stronghold", 255,0,0)
end

function dawn(zone)
end

function dusk(zone)
end