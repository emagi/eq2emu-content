--[[
    Script Name    : Spells/Commoner/BrellsBlessing.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.08 03:05:38
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

