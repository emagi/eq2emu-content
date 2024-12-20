--[[
	Script Name	: SpawnScripts/Antonica/HollyWindstalker.lua
	Script Purpose	: Holly Windstalker 
	Script Author	: TyroneSWG
	Script Date	: 2019.01.15
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Notes: Updated w/ Holly's 20+ min pathing script. 2022.08.26 Dorbin
	       Updated w/ autoattack damage. LordPazuzu 1/12/24
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    Named(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(65 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(105 + dmgMod))
    AddTimer(NPC, 10000, "waypoints")
end

function respawn(NPC)
	spawn(NPC)
end



function PlayerLeaveRange(NPC, Spawn)
	FaceTarget(NPC, "Run cowards!") -- not actual line. just testing
end

function hailed(NPC, Spawn)
end

function aggro(NPC,Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_aggro_gf_119a2ca8.mp3", "No. I'm unrest and you will suffer.", "", 994939246, 842217350)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_aggro_gf_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 2819833160, 2927838883)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_aggro_gf_821554e3.mp3", "Must you aggravate me so!", "", 735262000, 1417243472)
	end
end    

function victory (NPC,Spawn)
 		PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_victory_gf_65116994.mp3", "One down!  An eternity to go.", "", 3147020467, 1377166074)
end

function death (NPC,Spawn)
 		PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_death_gf_dcf6a99f.mp3", "I will not lose count, and you will suffer the lot!", "", 4014196469, 3336366018)
 end  

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -1849.29, -4.42, -628.7, 2, 0)
	MovementLoopAddLocation(NPC, -1830.46, -8.74, -626.98, 2, 0)
	MovementLoopAddLocation(NPC, -1806.56, -13.45, -637.27, 2, 0)
	MovementLoopAddLocation(NPC, -1804.09, -12.73, -639.76, 2, 0)
	MovementLoopAddLocation(NPC, -1791.15, -7, -641.9, 2, 0)
	MovementLoopAddLocation(NPC, -1776.05, -0.26, -656, 2, 0)
	MovementLoopAddLocation(NPC, -1766.69, 1.32, -667.36, 2, 0)
	MovementLoopAddLocation(NPC, -1744.06, 2.64, -679.96, 2, 0)
	MovementLoopAddLocation(NPC, -1734.8, 3.41, -684.21, 2, 0)
	MovementLoopAddLocation(NPC, -1726.16, 4.19, -683.7, 2, 0)
	MovementLoopAddLocation(NPC, -1696.77, 5.64, -682.84, 2, 0)
	MovementLoopAddLocation(NPC, -1651.75, 1.99, -694.12, 2, 0)
	MovementLoopAddLocation(NPC, -1619.27, -0.37, -684.96, 2, 0)
	MovementLoopAddLocation(NPC, -1621.14, 0.63, -660.82, 2, 0)
	MovementLoopAddLocation(NPC, -1620, -3.99, -639.17, 2, 0)
	MovementLoopAddLocation(NPC, -1606.52, -8.52, -619.88, 2, 0)
	MovementLoopAddLocation(NPC, -1599.35, -11.75, -606.87, 2, 0)
	MovementLoopAddLocation(NPC, -1582.33, -14.35, -584.47, 2, 0)
	MovementLoopAddLocation(NPC, -1544.11, -14.7, -554.22, 2, 0)
	MovementLoopAddLocation(NPC, -1531.06, -14.72, -553.08, 2, 0)
	MovementLoopAddLocation(NPC, -1503.52, -15.76, -549.37, 2, 0)
	MovementLoopAddLocation(NPC, -1478.05, -14.45, -544.07, 2, 0)
	MovementLoopAddLocation(NPC, -1456.32, -13.81, -544.08, 2, 0)
	MovementLoopAddLocation(NPC, -1393.37, -9.7, -566.65, 2, 0)
	MovementLoopAddLocation(NPC, -1314.66, -3.74, -602.73, 2, 0)
	MovementLoopAddLocation(NPC, -1301.55, -4.42, -608.35, 2, 0)
	MovementLoopAddLocation(NPC, -1276.7, -12.14, -627.3, 2, 0)
	MovementLoopAddLocation(NPC, -1262.35, -9.46, -640.65, 2, 0)
	MovementLoopAddLocation(NPC, -1243.29, -4.15, -655.81, 2, 0)
	MovementLoopAddLocation(NPC, -1229.07, -5.85, -673.73, 2, 0)
	MovementLoopAddLocation(NPC, -1216.97, -13.28, -691.51, 2, 0)
	MovementLoopAddLocation(NPC, -1214.24, -19.38, -704.79, 2, 0)
	MovementLoopAddLocation(NPC, -1212.32, -16.48, -713.14, 2, 0)
	MovementLoopAddLocation(NPC, -1214.76, -13.09, -719.35, 2, 0)
	MovementLoopAddLocation(NPC, -1215.48, -12.78, -720.18, 2, 0)
	MovementLoopAddLocation(NPC, -1221.73, -7.91, -733.86, 2, 0)
	MovementLoopAddLocation(NPC, -1219.44, -2.98, -764.92, 2, 0)
	MovementLoopAddLocation(NPC, -1235.96, 1.09, -805.13, 2, 0)
	MovementLoopAddLocation(NPC, -1252.36, 3.05, -824.26, 2, 0)
	MovementLoopAddLocation(NPC, -1265, 8.42, -849.93, 2, 0)
	MovementLoopAddLocation(NPC, -1267.2, 13.18, -871.32, 2, 0)
	MovementLoopAddLocation(NPC, -1255.98, 18.31, -902.77, 2, 0)
	MovementLoopAddLocation(NPC, -1239.79, 22.32, -925.74, 2, 0)
	MovementLoopAddLocation(NPC, -1230.5, 23.51, -928.26, 2, 0)
	MovementLoopAddLocation(NPC, -1204.25, 24.37, -938.63, 2, 0)
	MovementLoopAddLocation(NPC, -1182.62, 21.82, -926.97, 2, 0)
	MovementLoopAddLocation(NPC, -1173.48, 21.26, -919.07, 2, 0)
	MovementLoopAddLocation(NPC, -1163.8, 17.84, -888.78, 2, 0)
	MovementLoopAddLocation(NPC, -1157.97, 14.03, -872.62, 2, 0)
	MovementLoopAddLocation(NPC, -1153.65, 6.21, -845.57, 2, 0)
	MovementLoopAddLocation(NPC, -1153.16, 5.81, -842.72, 2, 0)
	MovementLoopAddLocation(NPC, -1155.7, -3.78, -776.89, 2, 0)
	MovementLoopAddLocation(NPC, -1166.67, -7.64, -736.35, 2, 0)
	MovementLoopAddLocation(NPC, -1164.37, -2.98, -704.02, 2, 0)
	MovementLoopAddLocation(NPC, -1163.38, -1.59, -698.25, 2, 0)
	MovementLoopAddLocation(NPC, -1157.01, 0.43, -689.44, 2, 0)
	MovementLoopAddLocation(NPC, -1145.25, -2.44, -681.69, 2, 0)
	MovementLoopAddLocation(NPC, -1137.72, -9.43, -671.15, 2, 0)
	MovementLoopAddLocation(NPC, -1125.64, -14.99, -668.31, 2, 0)
	MovementLoopAddLocation(NPC, -1098.43, -19.44, -639.92, 2, 0)
	MovementLoopAddLocation(NPC, -1096.22, -19.44, -638.14, 2, 0)
	MovementLoopAddLocation(NPC, -1087.92, -17.84, -635.88, 2, 0)
	MovementLoopAddLocation(NPC, -1083.36, -16.34, -635.77, 2, 0)
	MovementLoopAddLocation(NPC, -1081.81, -15.4, -633.63, 2, 0)
	MovementLoopAddLocation(NPC, -1074.5, -3.87, -637.46, 2, 0)
	MovementLoopAddLocation(NPC, -1065.09, 10.25, -640.07, 2, 0)
	MovementLoopAddLocation(NPC, -1079.98, 6.43, -604.51, 2, 0)
	MovementLoopAddLocation(NPC, -1071.5, 8.06, -592.72, 2, 0)
	MovementLoopAddLocation(NPC, -1058.27, 5.62, -568.16, 2, 0)
	MovementLoopAddLocation(NPC, -1033.67, 0.59, -542.55, 2, 0)
	MovementLoopAddLocation(NPC, -1013.44, 1.9, -526.62, 2, 0)
	MovementLoopAddLocation(NPC, -995.89, 3.96, -515.64, 2, 0)
	MovementLoopAddLocation(NPC, -974.13, 4.9, -489.78, 2, 0)
	MovementLoopAddLocation(NPC, -970.98, 4.69, -477.99, 2, 0)
	MovementLoopAddLocation(NPC, -971.24, 2.07, -452.04, 2, 0)
	MovementLoopAddLocation(NPC, -971.3, 4.78, -416.4, 2, 0)
	MovementLoopAddLocation(NPC, -971.21, 4.79, -412.06, 2, 0)
	MovementLoopAddLocation(NPC, -964.84, 4.04, -403.84, 2, 0)
	MovementLoopAddLocation(NPC, -955.11, 2.05, -404.38, 2, 0)
	MovementLoopAddLocation(NPC, -935.97, 4.07, -393.2, 2, 0)
	MovementLoopAddLocation(NPC, -929.36, 5.55, -386.19, 2, 0)
	MovementLoopAddLocation(NPC, -927.38, 5.1, -381.24, 2, 0)
	MovementLoopAddLocation(NPC, -925.15, -5.5, -356.29, 2, 0)
	MovementLoopAddLocation(NPC, -920.77, -7.29, -335.6, 2, 0)
	MovementLoopAddLocation(NPC, -914.47, -6.66, -317.42, 2, 0)
	MovementLoopAddLocation(NPC, -886.14, -4.69, -289.71, 2, 0)
	MovementLoopAddLocation(NPC, -853.86, -5.95, -285.35, 2, 0)
	MovementLoopAddLocation(NPC, -837.74, -8.94, -279.95, 2, 0)
	MovementLoopAddLocation(NPC, -822.71, -13.58, -286.73, 2, 0)
	MovementLoopAddLocation(NPC, -816.99, -14.52, -304.65, 2, 0)
	MovementLoopAddLocation(NPC, -814.46, -16.16, -340.42, 2, 0)
	MovementLoopAddLocation(NPC, -811.46, -22.71, -370.16, 2, 0)
	MovementLoopAddLocation(NPC, -821.07, -30.04, -398.76, 2, 0)
	MovementLoopAddLocation(NPC, -835.39, -32.65, -411.45, 2, 0)
	MovementLoopAddLocation(NPC, -873.51, -33.22, -433.49, 2, 0)
	MovementLoopAddLocation(NPC, -891.36, -35.44, -445.81, 2, 0)
	MovementLoopAddLocation(NPC, -914.16, -36.38, -449.51, 2, 0)
	MovementLoopAddLocation(NPC, -929.69, -36.02, -450.41, 2, 0)
	MovementLoopAddLocation(NPC, -948.49, -36.21, -443.71, 2, 0)
	MovementLoopAddLocation(NPC, -973.65, -36.22, -444.57, 2, 0)
	MovementLoopAddLocation(NPC, -995.05, -37.11, -448.75, 2, 0)
	MovementLoopAddLocation(NPC, -1010.95, -36.32, -455.65, 2, 0)
	MovementLoopAddLocation(NPC, -1027.26, -37.3, -463.29, 2, 0)
	MovementLoopAddLocation(NPC, -1056.76, -36.67, -475.53, 2, 0)
	MovementLoopAddLocation(NPC, -1073.21, -37.25, -489.65, 2, 0)
	MovementLoopAddLocation(NPC, -1081.88, -37.34, -493.29, 2, 0)
	MovementLoopAddLocation(NPC, -1118.01, -36.59, -485.52, 2, 0)
	MovementLoopAddLocation(NPC, -1151.44, -33.77, -479.98, 2, 0)
	MovementLoopAddLocation(NPC, -1156.53, -33.96, -479.07, 2, 0)
	MovementLoopAddLocation(NPC, -1169.02, -32.76, -468.92, 2, 0)
	MovementLoopAddLocation(NPC, -1177.83, -30.76, -458.27, 2, 0)
	MovementLoopAddLocation(NPC, -1184.03, -26.33, -447.57, 2, 0)
	MovementLoopAddLocation(NPC, -1184.61, -25.64, -445.64, 2, 0)
	MovementLoopAddLocation(NPC, -1189.85, -22.4, -439.36, 2, 0)
	MovementLoopAddLocation(NPC, -1196.97, -18.83, -421.71, 2, 0)
	MovementLoopAddLocation(NPC, -1215.08, -10.61, -383.87, 2, 0)
	MovementLoopAddLocation(NPC, -1225.8, -8, -366.63, 2, 0)
	MovementLoopAddLocation(NPC, -1237.24, -7.32, -359.88, 2, 0)
	MovementLoopAddLocation(NPC, -1258.64, -7.67, -356.3, 2, 0)
	MovementLoopAddLocation(NPC, -1294.85, -10.59, -364.38, 2, 0)
	MovementLoopAddLocation(NPC, -1312.81, -12.08, -371.38, 2, 0)
	MovementLoopAddLocation(NPC, -1364.11, -13.38, -378.42, 2, 0)
	MovementLoopAddLocation(NPC, -1383.92, -14.39, -385.91, 2, 0)
	MovementLoopAddLocation(NPC, -1439.53, -18.1, -402.84, 2, 0)
	MovementLoopAddLocation(NPC, -1463.99, -15.1, -405.03, 2, 0)
	MovementLoopAddLocation(NPC, -1476.47, -14.37, -410.04, 2, 0)
	MovementLoopAddLocation(NPC, -1485.58, -14.37, -419.89, 2, 0)
	MovementLoopAddLocation(NPC, -1486.66, -14.43, -435.14, 2, 0)
	MovementLoopAddLocation(NPC, -1493.52, -15.38, -444.91, 2, 0)
	MovementLoopAddLocation(NPC, -1502.73, -15.21, -455.49, 2, 0)
	MovementLoopAddLocation(NPC, -1514.47, -17.69, -459.64, 2, 0)
	MovementLoopAddLocation(NPC, -1526.59, -21.31, -460.31, 2, 0)
	MovementLoopAddLocation(NPC, -1543.15, -16.98, -458.16, 2, 0)
	MovementLoopAddLocation(NPC, -1551.28, -13.12, -461.39, 2, 0)
	MovementLoopAddLocation(NPC, -1560.01, -12.68, -463.6, 2, 0)
	MovementLoopAddLocation(NPC, -1571.75, -12.44, -463.37, 2, 0)
	MovementLoopAddLocation(NPC, -1576.08, -12.46, -461.41, 2, 0)
	MovementLoopAddLocation(NPC, -1594.93, -12.56, -441.63, 2, 0)
	MovementLoopAddLocation(NPC, -1607.2, -13.73, -432.26, 2, 0)
	MovementLoopAddLocation(NPC, -1615.72, -14.87, -425.69, 2, 0)
	MovementLoopAddLocation(NPC, -1654.73, -19.82, -406.32, 2, 0)
	MovementLoopAddLocation(NPC, -1670.67, -20.63, -402.4, 2, 0)
	MovementLoopAddLocation(NPC, -1682.33, -22.56, -404.13, 2, 0)
	MovementLoopAddLocation(NPC, -1692.32, -21.67, -405.6, 2, 0)
	MovementLoopAddLocation(NPC, -1708.44, -15.91, -411.61, 2, 0)
	MovementLoopAddLocation(NPC, -1714.86, -14.69, -415.69, 2, 0)
	MovementLoopAddLocation(NPC, -1721.11, -13.89, -418.78, 2, 0)
	MovementLoopAddLocation(NPC, -1747.05, -11.47, -441.76, 2, 0)
	MovementLoopAddLocation(NPC, -1747.93, -11.42, -456.1, 2, 0)
	MovementLoopAddLocation(NPC, -1747.05, -12.48, -464.51, 2, 0)
	MovementLoopAddLocation(NPC, -1746.6, -22.54, -481.17, 2, 0)
	MovementLoopAddLocation(NPC, -1745.69, -30.42, -492.91, 2, 0)
	MovementLoopAddLocation(NPC, -1744.96, -30.62, -500.2, 2, 0)
	MovementLoopAddLocation(NPC, -1738.71, -29.94, -510.97, 2, 0)
	MovementLoopAddLocation(NPC, -1709.58, -23.59, -546.52, 2, 0)
	MovementLoopAddLocation(NPC, -1705.18, -23.1, -554, 2, 0)
	MovementLoopAddLocation(NPC, -1701.38, -21.36, -569.8, 2, 0)
	MovementLoopAddLocation(NPC, -1701.7, -20.99, -576.86, 2, 0)
	MovementLoopAddLocation(NPC, -1708.28, -21.44, -591.46, 2, 0)
	MovementLoopAddLocation(NPC, -1715.19, -20.88, -596.41, 2, 0)
	MovementLoopAddLocation(NPC, -1720.2, -20.05, -599.93, 2, 0)
	MovementLoopAddLocation(NPC, -1726.42, -18.59, -602.09, 2, 0)
	MovementLoopAddLocation(NPC, -1733.16, -16.44, -602.69, 2, 0)
	MovementLoopAddLocation(NPC, -1744.32, -11.54, -608.18, 2, 0)
	MovementLoopAddLocation(NPC, -1758.62, -7.64, -621.87, 2, 0)
	MovementLoopAddLocation(NPC, -1770.42, -5.25, -630.29, 2, 0)
	MovementLoopAddLocation(NPC, -1778.44, -4.56, -635.56, 2, 0)
	MovementLoopAddLocation(NPC, -1789.65, -7.11, -639.13, 2, 0)
	MovementLoopAddLocation(NPC, -1796.04, -8.02, -644.77, 2, 0)
	MovementLoopAddLocation(NPC, -1807.9, -11.05, -648.41, 2, 0)
	MovementLoopAddLocation(NPC, -1819.88, -10.75, -650.61, 2, 0)
	MovementLoopAddLocation(NPC, -1831.04, -9.69, -650.56, 2, 0)
	MovementLoopAddLocation(NPC, -1841.68, -8.52, -650.51, 2, 0)
	MovementLoopAddLocation(NPC, -1847.39, -6.38, -643.81, 2, 0)
	MovementLoopAddLocation(NPC, -1849.4, -4.7, -631.56, 2, 0)
end


