--[[
    Script Name    : Spells/Resolute.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 11:04:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 1, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
