--[[
    Script Name    : Spells/Spry.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:20
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 2, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
