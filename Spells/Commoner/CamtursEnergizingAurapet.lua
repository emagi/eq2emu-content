--[[
    Script Name    : Spells/Commoner/CamtursEnergizingAurapet.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.21 11:05:12
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    Pet = GetPet(Caster)
    AddSpellBonus(Pet, 500, math.ceil(level * 2.75))
    AddSpellBonus(Pet, 203, level * 5 + 99)
end

function remove(Caster, Target)
    RemoveSpellBonus(Pet)
end