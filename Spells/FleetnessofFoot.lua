--[[
    Script Name    : Spells/FleetnessofFoot.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 04:05:58
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 2, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
