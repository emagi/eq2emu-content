--[[
    Script Name    : Spells/Commoner/Determination.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 02:05:15
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