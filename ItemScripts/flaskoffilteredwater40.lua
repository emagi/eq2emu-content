--[[
    Script Name    : ItemScripts/flaskoffilteredwater40.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.27 01:08:07
    Script Purpose : 
                   : 
--]]

function cast(Item, Player)
	Spell = GetSpell(5009)
	Regenz = 22.8
	newDuration = 9000
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Power Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end