--[[
    Script Name    : Spells/Mage/RetaliateArcana.lua
    Script Author  : image
    Script Date    : 2025.08.20 12:08:20
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Dispels 10 levels of hostile arcane effects on target
*Target receives a single trigger proc to do divine damage

--]]

function cast(Caster, Target, Damage)
   CureByType(1, 2, GetSpellName(), (GetLevel(Caster) * 1.08) + 1) 
    SetSpellTriggerCount(1, 1) -- Trigger Count: 3, CancelAfterTriggers: yes (1)
    AddProc(Caster, 1, 20)
end

function proc(Caster, Target, Type, Damage)
    ProcDamage(Caster, Target, GetSpellName(), 7, Damage) -- DAMAGE_PACKET_DAMAGE_TYPE_DIVINE (divine damage) is 7
    RemoveTriggerFromSpell() -- Removes trigger from SetSpellTriggerCount
end