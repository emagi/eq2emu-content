--[[
    Script Name    : SpawnScripts/Peatbog_Classic/ajuvenileshriller.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.03 03:11:38
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
   

end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end