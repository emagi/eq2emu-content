--[[
    Script Name    : SpawnScripts/NektulosClassic/amistgrinnin.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.25 06:04:41
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    ChooseIdle(NPC)
   AddTimer(NPC, 6000, "movement")
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

function movement(NPC, Spawn)
    if IsHeroic(NPC) == false then
        RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
    else

    end
end


