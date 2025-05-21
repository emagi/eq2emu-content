--[[
    Script Name    : ZoneScripts/IsleRefuge1.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.09 06:09:11
    Script Purpose : 
                   : 
--]]


function player_entry(Zone, Spawn)
SendPopUpMessage(Spawn, "The Isle of Refuge", 230, 230, 230)
--create an array of data, and change the array based on race of spawn entering zone.
zone = {}
if GetRace(Spawn) == 0 and GetBoundZoneID(Spawn) ~= EnterZoneIDHere then -- If the player entering is barbarian and their bind zone is not currently (somewhere?) then set accordingly
zone[0] = 1 --zone ID
zone[1] = 2 --x coord
zone[2] = 3 --y coord
zone[3] = 4 --z coord
zone[4] = 5 --height coord
elseif GetRace(Spawn) == 1 and GetBoundZoneID(Spawn) ~= EnterZoneIDHere then -- If the player entering is dark elf and their bind zone is not currently (somewhere?) then set accordingly
zone[0] = 6 --zone ID
zone[1] = 7 --x coord
zone[2] = 8 --y coord
zone[3] = 9 --z coord
zone[4] = 0 --height coord
end
-- Bind(Spawn, zone[0], zone[1], zone[2], zone[3], zone[4])
end


function init_zone_script(Zone)
CreateWidgetRegion(Zone, 0, "TestRegion", "", 924281492, 4117633379, 2.0)
end

--[[Create new script, RegionScripts/tutorial_island02/TestRegion.lua with the following:
function TakeFireDamage(Spawn)
local invul = IsInvulnerable(Spawn)
if invul == true then
return 0
end

local hp = GetHP(Spawn)
local level = GetLevel(Spawn)
local damageToTake = level * 1
-- if we don't have enough HP make them die to pain and suffering not self
if hp <= damageToTake then
KillSpawn(Spawn, null, 1)
else
DamageSpawn(Spawn, Spawn, 192, 3, damageToTake, damageToTake, "Fire!", 0, 0, 1, 1)
end
end

function EnterRegion(Zone, Spawn, RegionType)
-- initial tick for hitting the fire
TakeFireDamage(Spawn)

-- 5 second Tick
return 5000
end

function Tick(Zone, Spawn, RegionType)

TakeFireDamage(Spawn)

-- returning 1 would stop the Tick process until Spawn leaves/re-enters region
return 0
end]]--
