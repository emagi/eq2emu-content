--[[
    Script Name    : Spells/Muscular.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 0, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end