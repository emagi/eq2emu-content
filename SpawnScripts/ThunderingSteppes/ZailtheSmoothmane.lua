--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ZailtheSmoothmane.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.29 01:08:33
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(135 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(275 + dmgMod))
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 329.55, -1.17, 357.47, 2, 0)
	MovementLoopAddLocation(NPC, 368.26, -1.01, 364.7, 2, 0)
	MovementLoopAddLocation(NPC, 453.35, 0.55, 408.56, 2, 0)
	MovementLoopAddLocation(NPC, 478.65, -0.56, 417, 2, 0)
	MovementLoopAddLocation(NPC, 499.57, -0.99, 451.98, 2, 0)
	MovementLoopAddLocation(NPC, 529.71, 0.94, 461.95, 2, 0)
	MovementLoopAddLocation(NPC, 549.12, 8.79, 455.02, 2, 0)
	MovementLoopAddLocation(NPC, 568.87, 13.61, 438.87, 2, 0)
	MovementLoopAddLocation(NPC, 596.01, 14.85, 435.31, 2, 0)
	MovementLoopAddLocation(NPC, 627.59, 18.92, 409.71, 2, 0)
	MovementLoopAddLocation(NPC, 644.65, 18.65, 374.69, 2, 0)
	MovementLoopAddLocation(NPC, 707.46, 0.38, 362.04, 2, 0)
	MovementLoopAddLocation(NPC, 750.34, -0.61, 362.68, 2, 0)
	MovementLoopAddLocation(NPC, 784.9, -0.89, 390.67, 2, 0)
	MovementLoopAddLocation(NPC, 839.59, -1.14, 407.64, 2, 0)
	MovementLoopAddLocation(NPC, 943.46, 4.28, 402.82, 2, 0)
	MovementLoopAddLocation(NPC, 1000.87, 8.4, 419.64, 2, 0)
	MovementLoopAddLocation(NPC, 1000.87, 8.4, 419.64, 2, 0)
	MovementLoopAddLocation(NPC, 956.77, 5.41, 412.39, 2, 0)
	MovementLoopAddLocation(NPC, 890.64, 3.4, 410.85, 2, 0)
	MovementLoopAddLocation(NPC, 826.89, -1.76, 395.98, 2, 0)
	MovementLoopAddLocation(NPC, 791.99, -0.98, 393.95, 2, 0)
	MovementLoopAddLocation(NPC, 757.56, -0.64, 368.95, 2, 0)
	MovementLoopAddLocation(NPC, 724.1, -1.02, 361.19, 2, 0)
	MovementLoopAddLocation(NPC, 678.03, 8.58, 370.23, 2, 0)
	MovementLoopAddLocation(NPC, 653.89, 17.6, 397.43, 2, 0)
	MovementLoopAddLocation(NPC, 584.06, 15.23, 435.31, 2, 0)
	MovementLoopAddLocation(NPC, 564.64, 12.54, 439.11, 2, 0)
	MovementLoopAddLocation(NPC, 547.19, 9.02, 449.34, 2, 0)
	MovementLoopAddLocation(NPC, 532.27, 2.38, 458.94, 2, 0)
	MovementLoopAddLocation(NPC, 502.75, -1.03, 435.01, 2, 0)
	MovementLoopAddLocation(NPC, 460.88, 0.33, 419.92, 2, 0)
	MovementLoopAddLocation(NPC, 448.48, 0.76, 406.68, 2, 0)
	MovementLoopAddLocation(NPC, 411.74, -0.43, 379.19, 2, 0)
	MovementLoopAddLocation(NPC, 329.55, -1.17, 357.47, 2, 0)
end
