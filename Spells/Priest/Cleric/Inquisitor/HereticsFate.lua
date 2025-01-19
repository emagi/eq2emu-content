--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/HereticsFate.lua
    Script Author  : image
    Script Date    : 2025.01.15 11:01:09
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 180 - 220 heat damage on target encounter

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DoTType, MinVal, MaxVal)
 -- this spell damage is on removal (death of the spawn)
end


function tick(Caster, Target, DoTType, MinVal, MaxVal)
    local targets = GetGroup(Target)
    for k,v in ipairs(targets) do
        if IsAlive(v) then
            SpawnSet(v,"visual_state",89)
        end
    end
end

function remove(Caster, Target, Reason, DoTType, MinVal, MaxVal)
    MinVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 2.5, MinVal)
    MaxVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 2.5, MaxVal)

	if Reason == "target_dead" then
		local Zone = GetZone(Target)
	    local encounterSpawn = GetSpawnByGroupID(Zone, GetSpawnGroupID(Target))
	    if encounterSpawn ~= nil then
            local targets = GetGroup(encounterSpawn)
        	for k,v in ipairs(targets) do
                SpawnSet(v,"visual_state",0)
                if IsAlive(v) then
                    DamageSpawn(Caster, v, 193, 3, MinVal, MaxVal, GetSpellName())
                end
            end
        end
    end
end