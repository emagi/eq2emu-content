--[[
	Script Name		:	ItemScripts/ration.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	8.18.2019
	Script Notes	:	
--]]

function cast(Item, Player)
	Spell = GetSpell(5462)
	Regenz = 10.0
	newDuration = 18000
    SetSpellData(Spell, "name", "ration")
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end