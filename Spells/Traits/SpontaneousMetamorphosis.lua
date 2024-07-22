--[[
    Script Name    : Spells/Traits/SpontaneousMetamorphosis.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:05
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 3.0%

function cast(Caster, Target)
    MaxHP = GetMaxHP(Caster)
    AddSpellBonus(Caster, 500, math.ceil(MaxHP * 0.03))
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
