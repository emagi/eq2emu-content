--[[
    Script Name    : ItemScripts/LesserBloodoftheWolf.lua
    Script Author  : mark
    Script Date    : 2025.05.05 11:05:26
    Script Purpose : 
                   : 
--]]

--[[ Begin Item Effects

* Applies Blood of the Wolf when Activated.  Lasts for 15 minutes.
	* Increases speed of caster by 16.2%
	* This effect suspends during combat

End Item Effects--]]

function used(Item, Player)
CastSpell(Player, 2550539, 2) 
end
