--[[
    Script Name    : Spells/Traits/JumjumRegimen.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:18
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    MaxHP = GetMaxHP(Caster)
    AddSpellBonus(Caster, 500, math.ceil(MaxHP * 0.03))
end

function remove (Caster, Target)
    RemoveSpellBonus()
end


