--[[
    Script Name    : SpawnScripts/NorthFreeport/doortosummonerclass.lua
    Script Author  : dorbin
    Script Date    : 2024.08.11 03:08:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5905,1,0,0,1)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Enter Academy training room' then
    if HasQuest(Spawn,5905) and not HasCompletedQuest(Spawn,5905) then
         Summoner = GetZone("SummoningResearchChamber")
        Zone(Summoner,Spawn)
    end
end
end

function respawn(NPC)
	spawn(NPC)
end