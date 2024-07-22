--[[
    Script Name    : Spells/TrainedMind.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 208, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
