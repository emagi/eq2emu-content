--[[
    Script Name    : Spells/HollysEntanglingTrap.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.27 09:05:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Snare, Slow)
    SetSpellSnareValue(Target, Snare) 
    AddControlEffect(Target, 11)  --Apply snare
    AddSpellBonus(Target, 617, Slow) --Apply haste debuff
    AddProc(Target, 2, 5.0)  --Add proc for dispel
end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 11)
    RemoveSpellBonus()
end
