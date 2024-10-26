--[[
    Script Name    : SpawnScripts/SummoningResearchChamber/SummoningRug.lua
    Script Author  : dorbin
    Script Date    : 2024.08.10 06:08:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
end

function InRange(NPC,Player)
if  HasItem(Player,1001113)   then
    RemoveItem(Player, 1001113, 1)
    SendMessage(Player,"You place the clay on the ground in preparation for summoning.")
    SendPopUpMessage(Player,"You place the clay on the ground.",200,200,200)
    PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))
    PlayFlavor(Player,"","","gathering_success",0,0)        
            zone = GetZone(NPC) 
            if GetSpawnByLocationID(zone, 133793658)== nil then
            SpawnByLocationID(zone,133793658)
            end
            
            Shard = GetSpawnByLocationID(zone,133793653)           
            SpawnSet(Shard, "show_command_icon", 1)
            SpawnSet(Shard, "display_hand_icon", 1)           
            SpawnSet(Shard, "show_name", 1)            

            Dust = GetSpawnByLocationID(zone,133793654)           
            SpawnSet(Dust, "show_command_icon", 1)
            SpawnSet(Dust, "display_hand_icon", 1)           
            SpawnSet(Dust, "show_name", 1)     
end
end


function respawn(NPC)
	spawn(NPC)
end