--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/IntimidatingOrders.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:57
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt, CrushBuff, MentalDebuff)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
    AddSpellBonus(Target, 205, CrushBuff)
    AddSpellBonus(Target, 208, MentalDebuff)

end

function remove(Caster, Target)
    RemoveSkillBonus()
    RemoveSpellBonus()
end