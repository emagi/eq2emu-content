--[[
    Script Name    : Spells/Priest/Druid/Fury/RamsGrowth.lua
    Script Author  : Image
    Script Date    : 2025.08.04 10:45:21
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals group members (AE) for 84 - 103 instantly and every 2 seconds

--]]

function PerformGroupHeal(Caster, MinHeal, MaxHeal)
       local targets = GetGroup(Caster)
    if targets ~= nil then
        for k,v in ipairs(targets) do
            SpellHeal("Heal", MinHeal, MaxHeal, v, 0, 0, GetSpellName())
        end
    else
        SpellHeal("Heal", MinHeal, MaxHeal, Caster, 0, 0, GetSpellName())
    end 
end

function cast(Caster, Target, MinHeal, MaxHeal, SkillAmt)
    PerformGroupHeal(Caster, MinHeal, MaxHeal)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function tick(Caster, Target, MinHeal, MaxHeal, SkillAmt)
    PerformGroupHeal(Caster, MinHeal, MaxHeal)
end

function remove(Caster, Target, Reason, MinHeal, MaxHeal, SkillAmt)
    RemoveSkillBonus(Target) 
end