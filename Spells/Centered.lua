--[[
    Script Name    : Spells/Centered.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:13
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