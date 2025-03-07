--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/RedemptionReactive.lua
    Script Author  : image
    Script Date    : 2025.02.23 01:02:06
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)


--]]


function cast(Caster, Target, HealAmt, MaxHealthAmt)
	SetMaxHP(Target, GetMaxHP(Target) + MaxHealthAmt)
	SpellHeal("heal", HealAmt, HealAmt, Target, 0, 0, "Redemption")
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end