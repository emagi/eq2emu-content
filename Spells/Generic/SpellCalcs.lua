--[[
    Script Name    : Spells/Generic/SpellCalcs.lua
    Script Author  : image
    Script Date    : 2025.01.09
    Script Purpose : Shared Calcs for spells
                   : 
--]]

function CalculateRateValue(spell_base_level, level, rate, val)
    local level_diff = math.min(level - spell_base_level, 10)
    if level_diff < 0 then
        level_diff = 0
    end
    if rate < 0 then
            return math.floor(val + rate * level_diff - 0.5) -- don't make a negative rate become a positive one -0.5 down not +0.5 up.
    end

    return math.floor(val + rate * level_diff + 0.5)
end
