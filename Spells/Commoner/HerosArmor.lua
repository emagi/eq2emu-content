--[[
    Script Name    : Spells/Commoner/HerosArmor.lua
    Script Author  : neatz09
    Script Date    : 2020.03.29 03:03:00
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
	local MinMit = math.ceil((GetLevel(Caster) * 1.08) * MinVal)
	local MaxMit =  math.ceil((GetLevel(Caster) * 1.08) * MaxVal)    
	local MitAmt = MakeRandomInt(MinMit, MaxMit)
	
	AddSpellBonus(Target, 200, MitAmt)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end


