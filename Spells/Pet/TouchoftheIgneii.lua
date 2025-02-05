--[[
    Script Name    : Spells/Pet/TouchoftheIgneii.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.03 07:02:12
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgAmt, PowerBuff)
  	AddProc(Caster, 4, 100)
  	AddSpellBonus(Caster, 501, PowerBuff)
end

function proc(Caster, Target, Type, DmgType, DmgAmt)
    if Type == 4 then
	    SpellDamage(Target, DmgType, DmgAmt, DmgAmt)
	end
end

function remove(Caster, Target)
    RemoveProc()
    RemoveSpellBonus()
end
