--[[
    Script Name    : SpawnScripts/NorthFreeport/doortosorcererclass.lua
    Script Author  : dorbin
    Script Date    : 2024.08.12 07:08:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5904,1,0,0,1)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Enter Academy training room' then
    if HasQuest(Spawn,5904) and not HasCompletedQuest(Spawn,5904) then
         Sorcerer = GetZone("DuelingChamber")
        Zone(Sorcerer,Spawn)
    end
end
end

function respawn(NPC)
	spawn(NPC)
end