--[[
    Script Name    : SpawnScripts/BeggarsCourt/Kith.lua
    Script Author  : Dorbin
    Script Date    : 2018.07.08 10:07:36
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
SetTempVariable(NPC,"HissTimer", "0")
AddTimer(NPC,MakeRandomInt(3000,6000),"waypoints")
end

function InRange(NPC,Spawn)
if not IsInCombat(NPC) and GetTempVariable(NPC,"HissTimer")~="1" then
   local Choice = MakeRandomInt(0,100)   
   if GetRace(Spawn)== 13 then
        if Choice <=60 then
        InRange_Attack(NPC,Spawn)
        end
    elseif Choice <= 15 then
        InRange_Attack(NPC,Spawn)
    end      
end
end

function InRange_Attack(NPC,Spawn)
    local Choice = MakeRandomInt(1,2)
    if Choice == 1 then
    FaceTarget(NPC,Spawn)
    AddTimer(NPC,1000,"HissAttack",1,Spawn)
    elseif Choice == 2 then
    AddTimer(NPC,500,"Hiss",1,Spawn)
    end    
    SetTempVariable(NPC,"HissTimer", "1")
    AddTimer(NPC,65000,"HissReset",1,Spawn)
end


function HissAttack(NPC,Spawn)
    PlayFlavor(NPC,"","","attack",0,0)
end

function Hiss(NPC,Spawn)
   local Choice = MakeRandomInt(1,2)
    if Choice == 1 then
    PlaySound(NPC,"sounds/critters/cat/cat_hiss001.wav",GetX(NPC), GetY(NPC), GetZ(NPC))
    else
    PlaySound(NPC,"sounds/critters/cat/cat_hiss002.wav",GetX(NPC), GetY(NPC), GetZ(NPC))
    end
end

function HissReset(NPC,Spawn)
SetTempVariable(NPC,"HissTimer", "0")
end   


function waypoints(NPC)
    if MakeRandomInt(1,2) == 1 then
	MovementLoopAddLocation(NPC, 29.96, 3.5, 4.4, 1, 0)
	MovementLoopAddLocation(NPC, 37.9, 3.5, 2.99, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 45.43, 3.5, -0.12, 1, 0)
	MovementLoopAddLocation(NPC, 46.58, 3.5, -2.74, 1, 0)
	MovementLoopAddLocation(NPC, 48.04, 4, -8.21, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 43.66, 3.76, -9.6, 1, 0)
	MovementLoopAddLocation(NPC, 39.2, 5.15, -11.27, 1, 0)
	MovementLoopAddLocation(NPC, 39.2, 5.15, -11.27, 1, 0)
	MovementLoopAddLocation(NPC, 37.88, 5.25, -11.96, 1, 0)
	MovementLoopAddLocation(NPC, 29.44, 5.25, -15.14, 1, 0)
	MovementLoopAddLocation(NPC, 23.76, 5.25, -17.37, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 22.52, 5.25, -20.46, 1, 0)
	MovementLoopAddLocation(NPC, 21.59, 5.25, -26.12, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 17.35, 5, -25.97, 1, 0)
	MovementLoopAddLocation(NPC, 10.61, 4.75, -24.79, 1, 0)
	MovementLoopAddLocation(NPC, 3.95, 4.75, -29.18, 1, 0)
	MovementLoopAddLocation(NPC, 2.8, 5, -32.38, 1, 0)
	MovementLoopAddLocation(NPC, 3.51, 6.05, -36.6, 1, 30)
	MovementLoopAddLocation(NPC, 1.62, 5, -35.55, 1, 0)
	MovementLoopAddLocation(NPC, 1.69, 4.75, -31.27, 1, 0)
	MovementLoopAddLocation(NPC, 0.14, 4.25, -27.79, 1, 0)
	MovementLoopAddLocation(NPC, -1.15, 3.75, -24.35, 1, 0)
	MovementLoopAddLocation(NPC, -2.43, 3.5, -20.94, 1, 0)
	MovementLoopAddLocation(NPC, -1.45, 3.5, -17.13, 1, 0)
	MovementLoopAddLocation(NPC, 0.6, 3.5, -13.28, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -0.35, 3.5, -10.13, 1, 0)
	MovementLoopAddLocation(NPC, -2.81, 3.5, -8.76, 1, 0)
	MovementLoopAddLocation(NPC, -6.82, 3, -9.05, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -9.17, 3, -9.37, 1, 0)
	MovementLoopAddLocation(NPC, -8.68, 3, -12.98, 1, 0)
	MovementLoopAddLocation(NPC, -8.44, 3, -18, 1, 0)
	MovementLoopAddLocation(NPC, -10.69, 3, -17.97, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -13.06, 3, -20.7, 1, 0)
	MovementLoopAddLocation(NPC, -14.85, 3, -20.62, 1, 0)
	MovementLoopAddLocation(NPC, -15.72, 3, -16.58, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -15.4, 3, -13.91, 1, 0)
	MovementLoopAddLocation(NPC, -14.95, 2.5, -8.4, 1, 0)
	MovementLoopAddLocation(NPC, -11.73, 2, -0.16, 1, 0)
	MovementLoopAddLocation(NPC, -8.85, 2.02, 4.76, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -12.77, 2, 1.04, 1, 0)
	MovementLoopAddLocation(NPC, -15.05, 2, 0.7, 4, 2)
	MovementLoopAddLocation(NPC, -17.55, 2.04, 1.72, 4, 0)
	MovementLoopAddLocation(NPC, -20.93, 1.87, 5.23, 4, 0)
	MovementLoopAddLocation(NPC, -26.59, -0.75, 2.94, 4, 0)
	MovementLoopAddLocation(NPC, -27.35, -0.75, 4.8, 4, 0)
	MovementLoopAddLocation(NPC, -26.43, -0.8, 5.55, 4, 0)
	MovementLoopAddLocation(NPC, -18.26, -5.04, 9.36, 4, 0)
	MovementLoopAddLocation(NPC, -18.1, -5, 11.52, 4, 0)
	MovementLoopAddLocation(NPC, -20.64, -5, 13.69, 4, 2)
	MovementLoopAddLocation(NPC, -21.32, -5, 19.96, 1, 30)
	MovementLoopAddLocation(NPC, -23.79, -5, 19.76, 1, 0)
	MovementLoopAddLocation(NPC, -25.77, -5, 19, 1, 0)
	MovementLoopAddLocation(NPC, -29, -5.25, 19.07, 1, 0)
	MovementLoopAddLocation(NPC, -26.26, -5.75, 23.49, 1, 0)
	MovementLoopAddLocation(NPC, -17.58, -7, 30.99, 1, 0)
	MovementLoopAddLocation(NPC, -10.25, -7, 42.6, 1, 0)
	MovementLoopAddLocation(NPC, -11.31, -7, 48.66, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 4.71, -7, 59.52, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 16.21, -7, 50.4, 1, 0)
	MovementLoopAddLocation(NPC, 17.53, -6, 43.91, 1, 0)
	MovementLoopAddLocation(NPC, 17.33, -6, 39.91, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 13.67, -5.5, 32.8, 1, 0)
	MovementLoopAddLocation(NPC, 8.68, -5.5, 30.84, 1, 0)
	MovementLoopAddLocation(NPC, 4.82, -5.5, 27.91, 1, 0)
	MovementLoopAddLocation(NPC, 5.9, -5, 21.06, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 15, -5, 26.38, 1, 0)
	MovementLoopAddLocation(NPC, 21.19, -5, 26.16, 1, 0)
	MovementLoopAddLocation(NPC, 33.62, -5, 28.12, 1, 0)
	MovementLoopAddLocation(NPC, 45.73, -5, 30.41, 1, 0)
	MovementLoopAddLocation(NPC, 48.05, -5, 36.37, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 33.34, -5, 30.22, 1, 0)
	MovementLoopAddLocation(NPC, 31.44, -5, 23.24, 4, 2)
	MovementLoopAddLocation(NPC, 37.17, -3.56, 23.02, 4, 0)
	MovementLoopAddLocation(NPC, 41.93, -1.1, 24.14, 4, 0)
	MovementLoopAddLocation(NPC, 48.26, 1.86, 25.26, 4, 0)
	MovementLoopAddLocation(NPC, 49.49, 1.91, 24.58, 4, 0)
	MovementLoopAddLocation(NPC, 49.05, 2, 21.4, 4, 0)
	MovementLoopAddLocation(NPC, 52.68, 2, 18.88, 4, 2)
	MovementLoopAddLocation(NPC, 42.93, 2, 15.24, 1, 0)
	MovementLoopAddLocation(NPC, 36.16, 3.5, -1.75, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 34.14, 5.25, -10.41, 1, 0)
	MovementLoopAddLocation(NPC, 32.3, 5.25, -14.52, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 20.04, 5.25, -10.78, 1, 30)
	MovementLoopAddLocation(NPC, 20.04, 5.25, -10.78, 1, 0)
	MovementLoopAddLocation(NPC, 21.63, 5.25, -9.94, 1, 0)
	MovementLoopAddLocation(NPC, 23.33, 5.25, -9.37, 1, 0)
	MovementLoopAddLocation(NPC, 24.22, 5.01, -7.44, 1, 0)
	MovementLoopAddLocation(NPC, 30.13, 3.5, 4.37, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 14.46, 3.5, 1.5, 1, MakeRandomInt(8,16))
	
	else
	    
	
	MovementLoopAddLocation(NPC, 14.46, 3.5, 1.5, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 30.13, 3.5, 4.37, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 24.22, 5.01, -7.44, 1, 0)
	MovementLoopAddLocation(NPC, 23.33, 5.25, -9.37, 1, 0)
	MovementLoopAddLocation(NPC, 21.63, 5.25, -9.94, 1, 0)
	MovementLoopAddLocation(NPC, 20.04, 5.25, -10.78, 1, 0)
	MovementLoopAddLocation(NPC, 20.04, 5.25, -10.78, 1, 30)
	MovementLoopAddLocation(NPC, 20.04, 5.25, -10.78, 1, 0)
	MovementLoopAddLocation(NPC, 32.3, 5.25, -14.52, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 34.14, 5.25, -10.41, 1, 0)
	MovementLoopAddLocation(NPC, 36.16, 3.5, -1.75, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 42.93, 2, 15.24, 1, 0)
	MovementLoopAddLocation(NPC, 52.68, 2, 18.88, 4, 2)
	MovementLoopAddLocation(NPC, 49.05, 2, 21.4, 4, 0)
	MovementLoopAddLocation(NPC, 49.49, 1.91, 24.58, 4, 0)
	MovementLoopAddLocation(NPC, 48.26, 1.86, 25.26, 4, 0)
	MovementLoopAddLocation(NPC, 41.93, -1.1, 24.14, 4, 0)
	MovementLoopAddLocation(NPC, 37.17, -3.56, 23.02, 4, 0)
	MovementLoopAddLocation(NPC, 31.44, -5, 23.24, 4, 2)
	MovementLoopAddLocation(NPC, 33.34, -5, 30.22, 1, 0)
	MovementLoopAddLocation(NPC, 48.05, -5, 36.37, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 45.73, -5, 30.41, 1, 0)
	MovementLoopAddLocation(NPC, 33.62, -5, 28.12, 1, 0)
	MovementLoopAddLocation(NPC, 21.19, -5, 26.16, 1, 0)
	MovementLoopAddLocation(NPC, 15, -5, 26.38, 1, 0)
	MovementLoopAddLocation(NPC, 5.9, -5, 21.06, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 4.82, -5.5, 27.91, 1, 0)
	MovementLoopAddLocation(NPC, 8.68, -5.5, 30.84, 1, 0)
	MovementLoopAddLocation(NPC, 13.67, -5.5, 32.8, 1, 0)
	MovementLoopAddLocation(NPC, 17.33, -6, 39.91, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 17.53, -6, 43.91, 1, 0)
	MovementLoopAddLocation(NPC, 16.21, -7, 50.4, 1, 0)
	MovementLoopAddLocation(NPC, 4.71, -7, 59.52, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -11.31, -7, 48.66, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -10.25, -7, 42.6, 1, 0)
	MovementLoopAddLocation(NPC, -17.58, -7, 30.99, 1, 0)
	MovementLoopAddLocation(NPC, -26.26, -5.75, 23.49, 1, 0)
	MovementLoopAddLocation(NPC, -29, -5.25, 19.07, 1, 0)
	MovementLoopAddLocation(NPC, -25.77, -5, 19, 1, 0)
	MovementLoopAddLocation(NPC, -23.79, -5, 19.76, 1, 0)
	MovementLoopAddLocation(NPC, -21.32, -5, 19.96, 1, 30)
	MovementLoopAddLocation(NPC, -23.79, -5, 19.76, 1, 0)
	MovementLoopAddLocation(NPC, -20.64, -5, 13.69, 4, 2)
	MovementLoopAddLocation(NPC, -18.1, -5, 11.52, 4, 0)
	MovementLoopAddLocation(NPC, -18.26, -5.04, 9.36, 4, 0)
	MovementLoopAddLocation(NPC, -26.43, -0.8, 5.55, 4, 0)
	MovementLoopAddLocation(NPC, -27.35, -0.75, 4.8, 4, 0)
	MovementLoopAddLocation(NPC, -26.59, -0.75, 2.94, 4, 0)
	MovementLoopAddLocation(NPC, -20.93, 1.87, 5.23, 4, 0)
	MovementLoopAddLocation(NPC, -17.55, 2.04, 1.72, 4, 0)
	MovementLoopAddLocation(NPC, -15.05, 2, 0.7, 4, 2)
	MovementLoopAddLocation(NPC, -12.77, 2, 1.04, 1, 0)
	MovementLoopAddLocation(NPC, -8.85, 2.02, 4.76, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -11.73, 2, -0.16, 1, 0)
	MovementLoopAddLocation(NPC, -14.95, 2.5, -8.4, 1, 0)
	MovementLoopAddLocation(NPC, -15.4, 3, -13.91, 1, 0)
	MovementLoopAddLocation(NPC, -15.72, 3, -16.58, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -14.85, 3, -20.62, 1, 0)
	MovementLoopAddLocation(NPC, -13.06, 3, -20.7, 1, 0)
	MovementLoopAddLocation(NPC, -10.69, 3, -17.97, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -8.44, 3, -18, 1, 0)
	MovementLoopAddLocation(NPC, -8.68, 3, -12.98, 1, 0)
	MovementLoopAddLocation(NPC, -9.17, 3, -9.37, 1, 0)
	MovementLoopAddLocation(NPC, -6.82, 3, -9.05, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -2.81, 3.5, -8.76, 1, 0)
	MovementLoopAddLocation(NPC, -0.35, 3.5, -10.13, 1, 0)
	MovementLoopAddLocation(NPC, 0.6, 3.5, -13.28, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, -1.45, 3.5, -17.13, 1, 0)
	MovementLoopAddLocation(NPC, -2.43, 3.5, -20.94, 1, 0)
	MovementLoopAddLocation(NPC, -1.15, 3.75, -24.35, 1, 0)
	MovementLoopAddLocation(NPC, 0.14, 4.25, -27.79, 1, 0)
	MovementLoopAddLocation(NPC, 1.69, 4.75, -31.27, 1, 0)
	MovementLoopAddLocation(NPC, 1.62, 5, -35.55, 1, 0)
	MovementLoopAddLocation(NPC, 3.51, 6.05, -36.6, 1, 30)
	MovementLoopAddLocation(NPC, 3.51, 6.05, -36.6, 1, 0)
	MovementLoopAddLocation(NPC, 2.8, 5, -32.38, 1, 0)
	MovementLoopAddLocation(NPC, 3.95, 4.75, -29.18, 1, 0)
	MovementLoopAddLocation(NPC, 10.61, 4.75, -24.79, 1, 0)
	MovementLoopAddLocation(NPC, 17.35, 5, -25.97, 1, 0)
	MovementLoopAddLocation(NPC, 21.59, 5.25, -26.12, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 22.52, 5.25, -20.46, 1, 0)
	MovementLoopAddLocation(NPC, 23.76, 5.25, -17.37, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 29.44, 5.25, -15.14, 1, 0)
	MovementLoopAddLocation(NPC, 37.88, 5.25, -11.96, 1, 0)
	MovementLoopAddLocation(NPC, 39.2, 5.15, -11.27, 1, 0)
	MovementLoopAddLocation(NPC, 39.2, 5.15, -11.27, 1, 0)
	MovementLoopAddLocation(NPC, 43.66, 3.76, -9.6, 1, 0)
	MovementLoopAddLocation(NPC, 48.04, 4, -8.21, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 46.58, 3.5, -2.74, 1, 0)
	MovementLoopAddLocation(NPC, 45.43, 3.5, -0.12, 1, 0)
	MovementLoopAddLocation(NPC, 37.9, 3.5, 2.99, 1, MakeRandomInt(8,16))
	MovementLoopAddLocation(NPC, 29.96, 3.5, 4.4, 1, 0)
	end
end
