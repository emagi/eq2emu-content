--[[
    Script Name    : Spells/CamtursEnergizingAura.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.17 03:05:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    Pet = GetPet(Caster)
    AddSpellBonus(Caster, 500, math.ceil(level * 2.75))
    AddSpellBonus(Caster, 501, math.ceil(level * 2.75))
    AddSpellBonus(Caster, 200, level * 5 + 99)
    CastSpell(Pet, 2550518)
end

function remove(Caster, Target)
    Pet = GetPet(Caster)
    RemoveSpellBonus(Caster)
    CancelSpell(Pet, 2550518)
end
