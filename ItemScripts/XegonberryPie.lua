--[[
	Script Name		:	ItemScripts/XegonberryPie.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/31/2021
	Script Notes	:	
--]]

function cast(Item, Player)
	Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericWis.lua")
	Regenz = 158.8
	Stat = 14.9
	newDuration = 54000
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDataIndex(Spell, 1, Stat)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Wis of target by " .. Stat)
	SetSpellDisplayEffect(Spell, 1, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end