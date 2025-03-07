--[[
    Script Name    : ItemScripts/Brazsspecialliquidizedmeat.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.06 07:03:06
    Script Purpose : 
                   : 
--]]

function cast(Item, Player)
	Spell = GetSpell(5463)
	Regenz = 18.0
	newDuration = 18000
	SetSpellData(Spell, "duration1", newDuration)
	SetSpellData(Spell, "duration2", newDuration)
	SetSpellDataIndex(Spell, 0, Regenz)
	SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Power Regeneration of target by " .. Regenz)
	CastCustomSpell(Spell, Player, Player)
end

