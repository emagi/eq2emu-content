--[[
    Script Name    : Spells/Mage/Enchanter/BindingLight.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.09 08:04:20
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Roots target.
	*Blurs vision of target.
	*Reduces movement speed of target by X.

--]]

function cast(Caster, Target, Snare)
    AddControlEffect(Target, 5)
    AddProc(Target, 2, 5.0)
end

function proc(Caster, Target, Type, Snare)
    if Type == 2 then
        CancelSpell()
    end
end

function remove(Caster,Target, Snare)
    RemoveControlEffect()
    RemoveProc()
    Spell = GetSpell(2550412, GetSpellTier())
	SetSpellDataIndex(Spell, 0, Snare)
	CastCustomSpell(Spell, Caster, Target)
end

