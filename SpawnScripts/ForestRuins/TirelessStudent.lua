--[[
    Script Name    : SpawnScripts/ForestRuins/TirelessStudent.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.09 11:06:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =10
    local level2 = 11
    local difficulty1 = 5
    local hp1 = 235
    local power1 = 85
    local difficulty2 = 5
    local hp2 = 290
    local power2 = 105
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end