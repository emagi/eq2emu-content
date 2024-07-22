--[[
    Script Name    : SpawnScripts/ThunderingSteppes/settlerspawntest.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.17 09:07:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    ChooseVariant(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function ChooseVariant(NPC, Spawn)
    variant = MakeRandomInt(1,1)
    if variant == 1 then
        Variant1(NPC)
    else 
    end
    
end

function Variant1(NPC, Spawn)
    local zone = GetZone(NPC)
    TestGroup = SpawnGroupByID(zone, 1057658)
end







