--[[
    Script Name    : Spells/Powerful.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 11:04:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 0, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
