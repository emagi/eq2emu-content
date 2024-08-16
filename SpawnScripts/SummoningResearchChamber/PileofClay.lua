--[[
    Script Name    : SpawnScripts/SummoningResearchChamber/PileofClay.lua
    Script Author  : dorbin
    Script Date    : 2024.08.09 02:08:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SpawnSet(NPC, "show_command_icon", 1)
SpawnSet(NPC, "display_hand_icon", 1)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Use Components' then
      if HasItem(Spawn, 1001115, 1) and HasItem(Spawn,1001114, 1) then --handful of crystalized mana and shard of malachite
            SendMessage(Spawn,"You mix the malachite with the clay and sprinkle on the cystalized mana.")
          RemoveItem(Spawn,1001114,1)
          RemoveItem(Spawn,1001115,1)
    PlayFlavor(Player,"","","gathering_success",0,0)        
    PlayFlavor(NPC,"","","result_lightning_shimmer",0,0)
    AddTimer(NPC,2200,"MovingMud2",1)
    AddTimer(NPC,1400,"MovingMud1",1)
    else
        SendMessage(Spawn,"You do not have all the ingredients to perform this step of the summoning.","yellow")
    end
end
end

function MovingMud1(NPC)
SpawnSet(NPC,"size",40)
SpawnSet(NPC,"visual_state",1574)
SpawnSet(NPC, "show_command_icon", 0)
SpawnSet(NPC, "display_hand_icon", 0)
end

function MovingMud2(NPC)
SpawnSet(NPC,"name","writhing clay")
SpawnSet(NPC,"model_type",299)
local zone = GetZone(NPC)
SpawnByLocationID(zone, 133793659) -- Summoning Energy for Script Check
end

function respawn(NPC)
	spawn(NPC)
end