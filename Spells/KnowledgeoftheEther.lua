--[[
    Script Name    : Spells/KnowledgeoftheEther.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:14
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 203, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end

