--[[
    Script Name    : Spells/Focused.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.29 04:04:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    MaxPower = GetMaxPower(Caster)
    AddSpellBonus(Caster, 501, math.floor(MaxPower * 0.025))
end

function remove (Caster, Target)
    RemoveSpellBonus()
end