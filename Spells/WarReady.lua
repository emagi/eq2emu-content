--[[
    Script Name    : Spells/WarReady.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.07 10:05:16
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


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
