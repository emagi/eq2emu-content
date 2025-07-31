--[[
    Script Name    : ItemScripts/BlueNightmarewithBlueSaddle.lua
    Script Author  : image
    Script Date    : 2025.07.30 03:07:59
    Script Purpose : 
                   : 
--]]

--[[ Begin Item Effects

* Applies Call Nightmare when Activated.
	* Summons a mount to ride
		* Increases your ground speed by 135%
	* Increases Mitigation of caster vs elemental, noxious and arcane damage by 450

End Item Effects--]]

function used(Item, Player)
CastSpell(Player, 5026, 1) 

end

