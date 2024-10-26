--[[
    Script Name    : Spells/Nimble.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.27 10:04:38
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 2, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
