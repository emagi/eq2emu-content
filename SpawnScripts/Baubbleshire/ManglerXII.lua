--[[
	Script Name	: SpawnScripts/Baubbleshire/ManglerXII
	Script Purpose	: ManglerXII
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	MovementLoopAddLocation(NPC, 827.66, -14.06, -480.5, 1, 0)
	MovementLoopAddLocation(NPC, 834.32, -14.02, -476.03, 1, 0)
	MovementLoopAddLocation(NPC, 839.95, -13.49, -469.79, 1, 0)
	MovementLoopAddLocation(NPC, 847.06, -18.88, -454.96, 1, 0)
	MovementLoopAddLocation(NPC, 844.23, -18.96, -434.01, 1, 11)
	MovementLoopAddLocation(NPC, 846.6, -19.35, -430.72, 1, 0)
	MovementLoopAddLocation(NPC, 842.07, -18.98, -435.68, 1, 0)
	MovementLoopAddLocation(NPC, 847.61, -18.01, -458.75, 1, 0)
	MovementLoopAddLocation(NPC, 853.84, -18.85, -459.52, 1, 0)
	MovementLoopAddLocation(NPC, 866.67, -18.41, -442.31, 1, 0)
	MovementLoopAddLocation(NPC, 873.2, -18.48, -436.76, 1, math.random(0, 30))
	MovementLoopAddLocation(NPC, 874.93, -14.53, -423.92, 1, 0)
	MovementLoopAddLocation(NPC, 864.92, -13.09, -422.42, 1, 0)
	MovementLoopAddLocation(NPC, 860.02, -12, -417.94, 1, 0)
	MovementLoopAddLocation(NPC, 865.7, -13.2, -422.96, 1, 0)
	MovementLoopAddLocation(NPC, 873.41, -14.27, -422.8, 1, 0)
	MovementLoopAddLocation(NPC, 884.48, -13.88, -431.04, 1, 0)
	MovementLoopAddLocation(NPC, 891.23, -14.67, -441.9, 1, 0)
	MovementLoopAddLocation(NPC, 893.57, -16.73, -448.56, 1, 0)
	MovementLoopAddLocation(NPC, 891.52, -19.16, -461.79, 1, math.random(0, 30))
	MovementLoopAddLocation(NPC, 882.27, -19.14, -471.52, 1, 0)
	MovementLoopAddLocation(NPC, 882.74, -18.56, -481.89, 1, 0)
	MovementLoopAddLocation(NPC, 892.26, -17.73, -494.28, 2, 0)
	MovementLoopAddLocation(NPC, 893.76, -17.4, -500.52, 2, 0)
	MovementLoopAddLocation(NPC, 887.51, -16.56, -510.72, 1, 0)
	MovementLoopAddLocation(NPC, 877.19, -17.75, -506.52, 1, 0)
	MovementLoopAddLocation(NPC, 868.95, -17.85, -490.44, 1, 0)
	MovementLoopAddLocation(NPC, 862.42, -18.29, -485.48, 1, 0)
	MovementLoopAddLocation(NPC, 864.92, -18.93, -478.97, 1, 0)
	MovementLoopAddLocation(NPC, 860.79, -19.12, -468.87, 1, 0)
	MovementLoopAddLocation(NPC, 853.01, -18.57, -465.74, 1, 0)
	MovementLoopAddLocation(NPC, 846.36, -17.98, -467.82, 1, math.random(0, 30))
	MovementLoopAddLocation(NPC, 841.69, -17.75, -479.52, 1, 0)
	MovementLoopAddLocation(NPC, 835.11, -17.73, -483.31, 1, 0)
	MovementLoopAddLocation(NPC, 832.7, -17.82, -488.98, 1, 0)
	MovementLoopAddLocation(NPC, 833.92, -18.19, -495.19, 1, 0)
	MovementLoopAddLocation(NPC, 829.61, -17.9, -500.32, 1, 0)
	MovementLoopAddLocation(NPC, 828.01, -18.23, -508.81, 1, 0)
	MovementLoopAddLocation(NPC, 823.92, -17.52, -507.18, 1, 0)
	MovementLoopAddLocation(NPC, 822.69, -14.27, -500.15, 1, 0)
	MovementLoopAddLocation(NPC, 827.67, -13.96, -494.09, 1, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(1, 100) <= 25 then
    	FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC,"","","attack",0,0,Spawn)
		SendMessage(Spawn, GetName(NPC) .. " barks at you.")
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end