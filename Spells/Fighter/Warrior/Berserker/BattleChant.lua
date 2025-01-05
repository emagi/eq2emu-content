--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BattleChant.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.06 01:11:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Bonus)
    AddSpellBonus(Target, 0, Bonus)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
