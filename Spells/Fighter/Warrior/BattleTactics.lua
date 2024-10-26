--[[
    Script Name    : Spells/Fighter/Warrior/BattleTactics.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:32
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of group members (AE) by 73.3

function cast(Caster, Target, HP)
	AddSpellBonus(Target, 500, HP)
	hitpoints(Caster, Target)
end

function hitpoints(Caster, Target)
    ModifyHP(Target, GetMaxHP(Target) - GetHP(Target))
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end