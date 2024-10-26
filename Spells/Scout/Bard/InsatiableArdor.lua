--[[
    Script Name    : Spells/Scout/Bard/InsatiableArdor.lua
    Script Author  : LordPazuzu
    Script Date    : 3/29/2024
    Script Purpose : 
                   : 
--]]

-- Increases Defense of group members (AE) by 4.9 - Classic was self +Defense - 30 second buff.

function cast(Caster, Target, SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end