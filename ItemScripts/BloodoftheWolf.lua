--[[
    Script Name    : ItemScripts/BloodoftheWolf.lua
    Script Author  : mark
    Script Date    : 2025.05.06 12:05:16
    Script Purpose : 
                   : 
--]]

--[[ Begin Item Effects

* Applies Blood of the Wolf when Activated.  Lasts for 15 minutes.
	* Increases speed of caster by 18.9%
	* This effect suspends during combat

End Item Effects--]]

function used(Item, Player)
    if (GetLevel(Player) >= 20) 
        then
    CastSpell(Player, 2550539, 3)    
    end
end


