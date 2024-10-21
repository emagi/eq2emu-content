--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/BullRush.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.19 04:10:11
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    local item = GetEquippedItemBySlot(Caster, 1)
    if not item or GetItemType(item) ~= 4 then
        SendMessage(Caster, "Must have shield equipped", "yellow")
        return false, 70
    else
        return true
    end
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 27
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor((LvlBonus + StatBonus) * 2.5)
    MinDmg = MinVal + DmgBonus
    MaxDmg = MaxVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
end
