--[[
    Script Name    : Spells/Priest/Druid/Fury/ViciousFeast.lua
    Script Author  : Image
    Script Date    : 2025.08.20 09:18:24
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When target receives a reduction in health of 20% this spell will cast Savage Feast on caster.  Lasts for 18.0 seconds.  
	*Heals group members (AE) for 25 - 30 instantly and every 3 seconds
	*Increases STR of group members (AE) by 10.0
	*Increases STA of group members (AE) by 20.1

--]]

function cast(Caster, Target)
   AddProcExt(Target, 13, 0, 100.0) 
end

function proc_ext(Caster, Target, Type, DmgType, InitialCaster)
    CastSpell(InitialCaster, 170212, GetSpellTier(), InitialCaster)
end