--[[
    Script Name    : SpawnScripts/FallenGate/atorturedraiderHalfling.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.10 02:03:56
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    --ChooseClass(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChooseClass(NPC)
    RandomClass = MakeRandomInt(1,3)
    if RandomCLass == 1 then
        --fury
    elseif RandomClass == 2 then
        --brigand
    elseif RandomClass == 3 then
        --guardian
  end
        

end