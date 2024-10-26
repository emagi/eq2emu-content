--[[
    Script Name    : Spells/BattleRest.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.07 10:05:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "hp_regen")
    AddSpellBonus(Caster, 600, math.ceil(CurrentRegen * 0.05))
    AddSpellBonus(Caster, 0, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
