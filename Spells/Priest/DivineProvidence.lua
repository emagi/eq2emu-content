--[[
    Script Name    : Spells/Priest/DivineProvidence.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:17
    Script Purpose : 
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
    StartHeroicOpportunity(Caster, 11)
end
