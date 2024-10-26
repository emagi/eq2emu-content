--[[
    Script Name    : Spells/Commoner/BlessingofZek.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.07 10:05:12
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 0, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end