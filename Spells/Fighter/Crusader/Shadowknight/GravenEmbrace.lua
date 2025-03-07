--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/GravenEmbrace.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 10:11:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Chance)
	-- Die animtaion and restricts movement
	SetServerControlFlag(Target, 5, 1, 1);
	
	local roll = math.random(1, 100);
	if roll <= Chance then
		ClearHate(NPC, Target)
		SendMessage(Target, "Your feign death succeeded", "yellow")
	else
		SendMessage(Target, "Your feign death attempt failed", "yellow")
	end
end

function remove(Caster, Target)
	SetServerControlFlag(Target, 5, 1, 0);
end
