--[[
    Script Name    : Spells/Commoner/SinisterCunning.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.03 03:05:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 4, 5)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
