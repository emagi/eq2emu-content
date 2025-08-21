--[[
    Script Name    : Spells/Priest/Druid/Fury/PeerlessPredatorClassic.lua
    Script Author  : Image
    Script Date    : 2025.08.17 08:43:24
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Shapechanges caster into a lion
*Increases STA and AGI of caster by 21.6
*Adds 2.1% to base avoidance.
*Grants See Stealth to caster
*Increases Mitigation of caster vs elemental, noxious and arcane damage by 342

--]]

function cast(Caster, Target, StatAmount, BaseAvoidance, MitigationAmount, LowDmg, HighDmg)
    SetIllusion(Caster, 303)
    
    -- STA / AGI
    AddSpellBonus(Caster, 1, StatAmount)
    AddSpellBonus(Caster, 2, StatAmount)
    
    -- avoidance bonus
    AddSpellBonus(Caster, 696, BaseAvoidance)
    
    -- See Stealth
    SetSeeHide(Caster, true)

    -- mitigation vs ...
    AddSpellBonus(Caster, 201, MitigationAmount)
    AddSpellBonus(Caster, 202, MitigationAmount)
    AddSpellBonus(Caster, 203, MitigationAmount)
    
    AddProc(Caster, 16, 20.0) -- chance at doing some extra physical damage
end

function proc(Caster, Target, Type, StatAmount, BaseAvoidance, MitigationAmount, LowDmg, HighDmg)
    DamageSpawn(Caster, Target, 0, 0, LowDmg, HighDmg, "Predator's Attack")
end

function remove(Caster, Target, Reason)
    ResetIllusion(Caster)
    SetSeeHide(Caster, false)
    RemoveSpellBonus(Caster)
    RemoveProc(Caster)
end
