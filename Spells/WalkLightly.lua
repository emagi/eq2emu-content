--[[
    Script Name    : Spells/WalkLightly.lua
    Script Author  : dorbin
    Script Date    : 2024.04.11 03:04:57
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)


--]]

function cast(Caster, Target)
    Stealth(1)
    
end

function remove(Caster, Target)
    RemoveStealth()
   
end