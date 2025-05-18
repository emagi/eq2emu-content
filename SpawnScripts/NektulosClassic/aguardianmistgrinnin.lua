--[[
    Script Name    : SpawnScripts/NektulosClassic/aguardianmistgrinnin.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 07:04:57
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ChooseIdle(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChooseIdle(NPC)
    SetIdle = MakeRandomInt(1,3)
    if SetIdle == 1 then
        IdleAngry(NPC)
    elseif SetIdle == 2 then
        IdleBored(NPC)
    elseif SetIdle == 3 then
        IdleAlert(NPC)
    end
end

