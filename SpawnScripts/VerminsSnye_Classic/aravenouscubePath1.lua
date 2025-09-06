--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/aravenouscubePath1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.05 05:09:19
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(4000, 8000), "ChoosePath")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChoosePath(NPC)
    SetPath = MakeRandomInt(1,2)
    if SetPath == 1 then 
        Path1(NPC)
    elseif SetPath == 2 then 
        Path2(NPC)
    end
end

function Path1(NPC)
	MovementLoopAddLocation(NPC, 166.46 + MakeRandomInt(-2,2), -7.04, -80.76 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 163.4, -6.96, -78.39, 2, 0)
	MovementLoopAddLocation(NPC, 159.36, -7.03, -76.03, 2, 0)
	MovementLoopAddLocation(NPC, 157.25, -6.45, -72.8, 2, 0)
	MovementLoopAddLocation(NPC, 156.24 + MakeRandomInt(-2,2), -7.03, -69.27 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 157.41, -6.46, -72.7, 2, 0)
	MovementLoopAddLocation(NPC, 158.67 + MakeRandomInt(-2,2), -6.99, -76.39 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 156.21 + MakeRandomInt(-2,2), -7.05, -69.87 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 158.91, -7.02, -75.2, 2, 0)
	MovementLoopAddLocation(NPC, 162.98, -6.95, -78.14, 2, 0)
	MovementLoopAddLocation(NPC, 166.91, -7.03, -80.15, 2, 0)
	MovementLoopAddLocation(NPC, 170.19 + MakeRandomInt(-2,2), -7.02, -80.85 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 166.88, -7.03, -80.53, 2, 0)
	MovementLoopAddLocation(NPC, 163.67 + MakeRandomInt(-2,2), -6.97, -78.64 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 167.8 + MakeRandomInt(-2,2), -6.96, -81.16 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10), "ChoosePath")

end

function Path2(NPC)
	MovementLoopAddLocation(NPC, 169.87 + MakeRandomInt(-2,2), -7.01, -80.93 + MakeRandomInt(-2,2), 2, MakeRandomInt(3,5))
	MovementLoopAddLocation(NPC, 172.92 + MakeRandomInt(-2,2), -6.99, -79.58 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 174.64, -7.01, -80.92, 2, 0)
	MovementLoopAddLocation(NPC, 180.06 + MakeRandomInt(-2,2), -7.01, -79.62 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 176.35, -6.92, -81.97, 2, 0)
	MovementLoopAddLocation(NPC, 173.46 + MakeRandomInt(-2,2), -6.96, -82.5 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 169.38, -6.98, -81.26, 2, 0)
	MovementLoopAddLocation(NPC, 166.46, -7.02, -79.52, 2, 0)
	MovementLoopAddLocation(NPC, 162.89 + MakeRandomInt(-2,2), -6.98, -78.75 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 165.8, -6.99, -79.42, 2, 0)
	MovementLoopAddLocation(NPC, 168.17 + MakeRandomInt(-2,2), -6.97, -80.6 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 174.58, -7.01 + MakeRandomInt(-2,2), -79.84 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 170.44 + MakeRandomInt(-2,2), -6.94, -82.61 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 172.97, -7.04, -81.23, 2, 0)
	MovementLoopAddLocation(NPC, 178.49 + MakeRandomInt(-2,2), -7.06, -80.41 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10), "ChoosePath")
end