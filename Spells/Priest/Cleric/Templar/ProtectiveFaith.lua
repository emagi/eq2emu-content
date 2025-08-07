--[[
    Script Name    : Spells/Priest/Cleric/Templar/ProtectiveFaith.lua
    Script Author  : Image
    Script Date    : 2025.08.06 13:11:51
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

    I just got the app III for this spell and it added 116 to power at level 29.2 (regimens = 146). Also Divine, Magic and Mental resists were all increased by 256. 
    ARCHIVED-Ember, Dec 24, 2004 

--]]

function cast(Caster, Target, Power, Resist)
    AddSpellBonus(Target, 619, Power)
    
--Increases Mitigation of target Divine, Magic and Mental resists  
    AddSpellBonus(Target, 203, Resist) -- magic
    AddSpellBonus(Target, 208, Resist) -- mental
    AddSpellBonus(Target, 209, Resist) -- divine
end

function remove(Caster, Target, Reason, Power, Resist)
    RemoveSpellBonus(Target)
end