--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Bash.lua
    Script Author  : Dello
    Script Date    : 13/06/2014
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    local item = GetEquippedItemBySlot(Caster, 1)
    if not item or GetItemType(item) ~= 4 then
        SendMessage(Caster, "Must have shield equipped", "yellow")
        return false, 70
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 27
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor((LvlBonus + StatBonus) * 2)
    MinDmg = MinVal + DmgBonus
    MaxDmg = MaxVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
    

end