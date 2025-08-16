--[[
    Script Name    : SpawnScripts/Blackburrow/widgetgnollbrew.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.12 05:07:48
    Script Purpose : 
                   : 
--]]

--local GnollBrew = 5638
--local BuckyID = 133798010

function spawn(NPC)

end

function casted_on(NPC, Spawn, Command)
zone = GetZone(Spawn)    
    
    if Command == 'Grab jug of brew' then
        if SpawnBucky == nil then
            SpawnBucky = SpawnByLocationID(zone, 133798010)
        end
        if GetQuestStep(Spawn, GnollBrew) == 1 then
            SetStepComplete(Spawn, 5638, 1)
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end