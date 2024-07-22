--[[
    Script Name    : SpawnScripts/ScarabHive/GuardianAnkhentaris.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.16 10:10:23
    Script Purpose : 
                   : 
--]]

local Guardian_AnkhemaufutID = 619217
local Guardian_AnkhumyalID = 619232
local Guardian_AnkhrenlaiID = 619233
local Queen = 619238
function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function death(NPC, Spawn)
local zone = GetZone(Spawn)
--local Guardian_Ankhentaris = GetSpawnByLocationID(zone, 619216)
local Guardian_Ankhemaufut = GetSpawnByLocationID(zone, Guardian_AnkhemaufutID)
local Guardian_Ankhumyal = GetSpawnByLocationID(zone, Guardian_AnkhumyalID)
local Guardian_Ankhrenlai = GetSpawnByLocationID(zone, Guardian_AnkhrenlaiID)
if not IsAlive(Guardian_Ankhemaufut) and not IsAlive(Guardian_Ankhumyal) and not IsAlive(Guardian_Ankhrenlai) then
SpawnByLocationID(zone, Queen)
end
    end


function respawn(NPC)
	spawn(NPC)
end