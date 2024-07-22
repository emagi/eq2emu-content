--[[
    Script Name    : Spells/Commoner/SingedEyebrows.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 06:05:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 201, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
