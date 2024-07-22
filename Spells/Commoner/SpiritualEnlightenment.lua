--[[
    Script Name    : Spells/Commoner/SpiritualEnlightenment.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 04:05:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 3, 5)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
