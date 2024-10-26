--[[
    Script Name    : Spells/ErudsTeachings.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:58
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    MaxPower = GetMaxPower(Caster)
    AddSpellBonus(Caster, 501, math.ceil(MaxPower * 0.03))
    AddSpellBonus(Caster, 4, 2)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end


