--[[
    Script Name   : Spells/Tradeskills/ProgressAdd.lua
    Script Purpose: Adds progress during crafting
    Script Author : Jabantiz
    Script Date   : 2012.09.08
    Script Notes  : 
--]]

function cast(Caster, Target, ProgressAmount)
	AddSpellBonus(Caster, 802, ProgressAmount)
	SetPower( Caster, GetPower(Caster) - GetPCTOfPower(Caster,15))
end

function remove(Caster, Target, ProgressAmount)
    RemoveSpellBonus(Target)
end