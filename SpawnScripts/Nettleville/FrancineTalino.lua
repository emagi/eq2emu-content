--[[
    Script Name    : SpawnScripts/Nettleville/FrancineTalino.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.22 11:06:05
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
    SetInfoStructString(NPC, "action_state", "mood_angry")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)<0 then
    FactionCheckingCallout(NPC,Spawn,faction)
    end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 594.03, -20.35, 303.22, 2, 1)
	MovementLoopAddLocation(NPC, 594.03, -20.35, 303.22, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 590.82, -20.39, 303.12, 2, 0)
	MovementLoopAddLocation(NPC, 586.11, -20.3, 307.87, 2, 0)
	MovementLoopAddLocation(NPC, 581.74, -20.4, 315.28, 2, 0)
	MovementLoopAddLocation(NPC, 578.48, -20.52, 325.4, 2, 0)
	MovementLoopAddLocation(NPC, 576.4, -20.48, 333.77, 2, 0)
	MovementLoopAddLocation(NPC, 570.24, -19.99, 337.45, 2, 0)
	MovementLoopAddLocation(NPC, 570.24, -19.99, 337.45, 2, 1)
	MovementLoopAddLocation(NPC, 570.24, -19.99, 337.45, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 572.57, -20.21, 338.04, 2, 0)
	MovementLoopAddLocation(NPC, 578.08, -20.34, 338.62, 2, 0)
	MovementLoopAddLocation(NPC, 583.48, -20.37, 341.55, 2, 0)
	MovementLoopAddLocation(NPC, 588.77, -20.29, 343.2, 2, 0)
	MovementLoopAddLocation(NPC, 590.84, -20.33, 343.61, 2, 0)
	MovementLoopAddLocation(NPC, 591.53, -20.34, 343.07, 2, 1)
	MovementLoopAddLocation(NPC, 591.53, -20.34, 343.07, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 592.01, -20.35, 343.53, 2, 0)
	MovementLoopAddLocation(NPC, 595.67, -20.35, 344.34, 2, 0)
	MovementLoopAddLocation(NPC, 598.68, -20.56, 345.01, 2, 0)
	MovementLoopAddLocation(NPC, 601.26, -20.71, 344.63, 2, 0)
	MovementLoopAddLocation(NPC, 602.93, -20.8, 344.25, 2, 0)
	MovementLoopAddLocation(NPC, 607.75, -20.78, 337.88, 2, 0)
	MovementLoopAddLocation(NPC, 610.2, -20.54, 333.72, 2, 0)
	MovementLoopAddLocation(NPC, 611.36, -20.51, 331.13, 2, 0)
	MovementLoopAddLocation(NPC, 613.13, -20.59, 328.14, 2, 0)
	MovementLoopAddLocation(NPC, 617.13, -20.56, 322.81, 2, 0)
	MovementLoopAddLocation(NPC, 621.11, -20.55, 317.76, 2, 0)
	MovementLoopAddLocation(NPC, 623.33, -20.46, 314.74, 2, 0)
	MovementLoopAddLocation(NPC, 627.96, -20.54, 310.16, 2, 0)
	MovementLoopAddLocation(NPC, 634, -20.63, 308.31, 2, 0)
	MovementLoopAddLocation(NPC, 636.47, -20.62, 307.11, 2, 0)
	MovementLoopAddLocation(NPC, 641.44, -20.46, 304.97, 2, 0)
	MovementLoopAddLocation(NPC, 646.72, -20.38, 293.05, 2, 1)
	MovementLoopAddLocation(NPC, 646.72, -20.38, 293.05, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 643.91, -20.52, 295, 2, 0)
	MovementLoopAddLocation(NPC, 639.12, -20.62, 296.86, 2, 0)
	MovementLoopAddLocation(NPC, 637.6, -20.56, 297.45, 2, 0)
	MovementLoopAddLocation(NPC, 635.31, -20.41, 295.26, 2, 0)
	MovementLoopAddLocation(NPC, 632.62, -20.37, 286.46, 2, 0)
	MovementLoopAddLocation(NPC, 631.68, -20.38, 283.33, 2, 0)
	MovementLoopAddLocation(NPC, 626.74, -20.38, 281.02, 2, 0)
	MovementLoopAddLocation(NPC, 625.07, -20.36, 280.19, 2, 0)
	MovementLoopAddLocation(NPC, 622.87, -20.36, 280.65, 2, 0)
	MovementLoopAddLocation(NPC, 611.96, -20.26, 285.12, 2, 0)
	MovementLoopAddLocation(NPC, 603.79, -20.33, 288.71, 2, 0)
	MovementLoopAddLocation(NPC, 600.9, -20.35, 290.15, 2, 0)
	MovementLoopAddLocation(NPC, 596.29, -20.41, 296.05, 2, 0)
	MovementLoopAddLocation(NPC, 594.28, -20.34, 303.51, 2, 1)
	MovementLoopAddLocation(NPC, 594.28, -20.34, 303.51, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 592.94, -20.38, 303.12, 2, 0)
	MovementLoopAddLocation(NPC, 586.62, -20.32, 306.68, 2, 0)
	MovementLoopAddLocation(NPC, 581.71, -20.17, 312.91, 2, 0)
	MovementLoopAddLocation(NPC, 580.26, -20.36, 318.56, 2, 0)
	MovementLoopAddLocation(NPC, 575.97, -20.41, 336.04, 2, 0)
	MovementLoopAddLocation(NPC, 577.88, -20.35, 338.74, 2, 0)
	MovementLoopAddLocation(NPC, 580.26, -20.24, 339.11, 2, 1)
	MovementLoopAddLocation(NPC, 580.26, -20.24, 339.11, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 580.45, -20.37, 341.51, 2, 0)
	MovementLoopAddLocation(NPC, 588.78, -20.29, 343.13, 2, 0)
	MovementLoopAddLocation(NPC, 596.77, -20.4, 344.58, 2, 0)
	MovementLoopAddLocation(NPC, 599.94, -20.63, 345.06, 2, 0)
	MovementLoopAddLocation(NPC, 603.05, -20.8, 343.83, 2, 0)
	MovementLoopAddLocation(NPC, 608.99, -20.72, 340.34, 2, 0)
	MovementLoopAddLocation(NPC, 610.66, -20.56, 337.4, 2, 1)
	MovementLoopAddLocation(NPC, 610.82, -20.55, 337.60, 2, 45,"EcologyEmotes")
    MovementLoopAddLocation(NPC, 606.27, -20.73, 345.76, 2, 0)
	MovementLoopAddLocation(NPC, 600.62, -20.69, 345.47, 2, 0)
	MovementLoopAddLocation(NPC, 592.56, -20.36, 344.2, 2, 0)
	MovementLoopAddLocation(NPC, 584.58, -20.35, 342.09, 2, 0)
	MovementLoopAddLocation(NPC, 580.19, -20.32, 340.65, 2, 0)
	MovementLoopAddLocation(NPC, 578.04, -20.37, 334.59, 2, 0)
	MovementLoopAddLocation(NPC, 576.96, -20.41, 331.57, 2, 0)
	MovementLoopAddLocation(NPC, 578.57, -20.44, 321.82, 2, 0)
	MovementLoopAddLocation(NPC, 581.96, -20.2, 312.84, 2, 0)
	MovementLoopAddLocation(NPC, 587.27, -20.36, 305.92, 2, 0)
	MovementLoopAddLocation(NPC, 591.37, -20.4, 302.19, 2, 0)
end


