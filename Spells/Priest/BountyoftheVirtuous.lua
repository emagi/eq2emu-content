--[[
    Script Name    : Spells/Priest/BountyoftheVirtuous.lua
    Script Author  : image
    Script Date    : 2025.01.09 02:01:59
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*10% chance to apply Bounty of the Virtuous.
	*Increases power of caster by 45
*Heals target for 150

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, HealMin, HealMax, PowerMin, PowerMax)
local HealAmt = MakeRandomFloat(HealMin, HealMax)
local PowerAmt = MakeRandomFloat(PowerMin, PowerMax)
HealAmt = CalculateRateValue(GetSpellRequiredLevel(Caster), GetLevel(Caster), 29.9, HealAmt)
PowerAmt = CalculateRateValue(GetSpellRequiredLevel(Caster), GetLevel(Caster), 6.6, PowerAmt)
local canPowerSelfChance = MakeRandomInt(0,100)
SpellHeal("Heal", HealAmt)
    if canPowerSelfChance < 10 then
        SpellHeal("Power", PowerAmt, PowerAmt, Caster)
    end
end
