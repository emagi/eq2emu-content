--[[
    Script Name    : Spells/BastensRunesofSurety.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.22 12:05:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Target, 500, math.ceil(level * 2.75))
    AddSpellBonus(Target, 501, math.ceil(level * 2.75))
    AddSpellBonus(Target, 200, level * 5 + 99)
    AddProc(Caster, 2, 5.0)
end

function proc(Caster, Target, Type)
    if Type == 2 then
        Say(Caster, "Proc")
        CastSpell(Caster, 2550515)
    end 
end

function remove(Caster, Target)
    RemoveSpellBonus()
    RemoveProc()
end

