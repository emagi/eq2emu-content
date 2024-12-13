--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Jeer.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:32
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 22
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    HateBonus = math.floor(LvlBonus * 2.5)
    MaxHate = MaxVal + HateBonus
    MinHate = MinVal + HateBonus
    AddHate(Caster, Target, math.random(MinHate,MaxHate),1)
    AddControlEffect(Target, 6)
    

end

function remove(Caster, Target)
    RemoveControlEffect(Target, 6)
end
