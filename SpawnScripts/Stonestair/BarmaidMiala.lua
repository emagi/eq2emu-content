--[[
    Script Name    : SpawnScripts/Stonestair/Miala.lua
    Script Author  : Xiki
    Script Date    : 2025.02.12 10:02:48
    Script Purpose : 
                   : 
--]]

local NOSNOS_PROPHECY = 5950

function spawn(NPC)
    ProvidesQuest(NPC, NOSNOS_PROPHECY)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasCompletedQuest(Spawn, NOSNOS_PROPHECY) then
        Say(NPC, "[Placeholder]I'm glad you're done with that quest.")
    elseif GetQuestStep(Spawn, NOSNOS_PROPHECY) == 1 then
        Say(NPC, "I'm not interested in hearing about Nosno's prophecy.")
        SetStepComplete(Spawn, NOSNOS_PROPHECY, 1)
    end
end

function respawn(NPC)
    spawn(NPC)
end