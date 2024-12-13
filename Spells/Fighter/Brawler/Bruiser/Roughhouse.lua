--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Roughhouse.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:45
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, FistBonus, DeflectionPenalty)
    AddSkillBonus(Caster, 3177806075, FistBonus)
    AddSkillBonus(Caster, 3850377186, DeflectionPenalty)

end

function remove(Caster, Target)
    RemoveSkillBonus()
end