--[[
    Script Name    : Spells/Priest/Shaman/SpiritualSeal.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:02
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of group members (AE) by 30.4
-- Increases Mitigation of group members (AE) vs noxious damage by 156

function cast(Caster, Target, HP, Mit)
    AddSpellBonus(Target, 500, HP)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 209, Mit)
    hitpoints(Caster, Target)
end

function hitpoints(Caster, Target)
    ModifyHP(Target, GetMaxHP(Target) - GetHP(Target))
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
