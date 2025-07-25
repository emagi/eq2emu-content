--[[
    Script Name    : Spells/Fighter/FightingChance.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 09:11:34
    Script Purpose : Begins a Heroic Opportunity
                   : 
--]]

function precast(Caster, Target)
   -- Must be engaged in combat
   if GetTarget(Caster) and GetID(GetTarget(Caster)) ~= GetID(Caster) then
        local val = GetInfoStructUInt(Caster, "engaged_encounter")
        return val ~= 0
    else
        return {false, 38} 
    end
end

function cast(Caster, Target)
    -- Begins a Heroic Opportunity
    StartHeroicOpportunity(Caster, 1)
end
