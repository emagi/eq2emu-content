--[[
    Script Name    : SpawnScripts/EastFreeport/GuardZagokkSkinflayer.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.03 04:03:14
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
    AddTimer(NPC, 6000, "follow")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn)
end