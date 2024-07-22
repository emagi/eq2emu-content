--[[
    Script Name    : Spells/Traits/FlashofInsight.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:08
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
