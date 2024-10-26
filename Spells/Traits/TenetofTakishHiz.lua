--[[
    Script Name    : Spells/Traits/TenetofTakishHiz.lua
    Script Author  : neatz09
    Script Date    : 2020.12.20 01:12:54
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs arcane damage by 3

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 207, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
