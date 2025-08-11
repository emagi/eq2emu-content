--[[
    Script Name    : SpawnScripts/GMHall/GuideFreddums.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.28 04:01:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
        PlayAnimation(NPC, 16583)
        PlayAnimation(NPC, 16863)
end


function DoSpellVisual(NPC,Spawn)
	ClearChoice(Spawn, "select")
	CreateChoiceWindow(NPC, Spawn, "Display Visual ID", "OK", "select", "Cancel", "", 0, 1, 1, 14)
end
function casted_on(NPC, Spawn, NewValue)
    ApplySpellVisual(Spawn,NewValue)
end

function hailed(NPC, Spawn)
        Say(NPC, "Greetings.")
        OfferQuest(NPC, Spawn, 456)
        DoSpellVisual(NPC, Spawn)
end

function respawn(NPC)

end

