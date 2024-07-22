--[[
    Script Name    : Spells/Traits/NaturalProgression.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:26
    Script Purpose : 
                   : 
--]]

-- Increases the amount of progress gained by 2.0%.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 803, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end