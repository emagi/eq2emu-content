--[[
    Script Name    : Spells/Deft.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 11:04:54
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 2, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
