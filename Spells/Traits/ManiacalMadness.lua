--[[
    Script Name    : Spells/Traits/ManiacalMadness.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:30
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    MaxPower = GetMaxPower(Caster)
    AddSpellBonus(Caster, 501, math.ceil(MaxPower * 0.03))
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
