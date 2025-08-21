--[[
    Script Name    : Spells/Priest/Druid/Fury/Savagery.lua
    Script Author  : Image
    Script Date    : 2025.08.20 19:11:23
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases STR and AGI of target by 18.2
*On any combat or spell hit this spell may cast Battle Fury on target.
	* Additional slashing attack (using the primary weapon type and damage)

--]]

function cast(Caster, Target, Amount)
    AddSpellBonus(Target, 0, Amount)
    AddSpellBonus(Target, 2, Amount)
    AddProc(Target, 16, 15.0)
end

function proc(Caster, Target, Type)
    ProcDamage(Caster, Target, "Battle Fury", GetInfoStructUInt(Caster, "primary_weapon_type"), GetInfoStructUInt(Caster, "primary_weapon_damage_low"), GetInfoStructUInt(Caster, "primary_weapon_damage_high"))
end

function remove(Caster, Target)
    RemoveProc(Target)
    RemoveSpellBonus(Target)
end
