--[[
    Script Name    : ItemScripts/WeakenedBloodoftheWolf.lua
    Script Author  : image
    Script Date    : 2025.05.05 06:05:24
    Script Purpose : 
                   : 
--]]

--[[ Begin Item Effects

* Applies Blood of the Wolf when Activated.  Lasts for 15 minutes.
	* Increases speed of caster by 13.8%
	* This effect suspends during combat

End Item Effects--]]

function used(Item, Player)
CastSpell(Player, 2550539, 1) 
end