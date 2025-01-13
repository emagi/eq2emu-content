--[[
    Script Name    : Spells/Commoner/RevivedSickness.lua
    Script Author  : image
    Script Date    : 2025.01.11 12:01:47
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases All Attributes of target by 20.0%
	*If not between levels 1 - 6
*Decreases Haste of target by 20.0
	*If not between levels 1 - 6
*Decreases All Attributes of target by 5.0%
	*If between levels 1 - 6
*Decreases Haste of target by 5.0
	*If between levels 1 - 6

--]]



function cast(Caster, Target, DecreaseAttribHighLvl, DecreaseHasteHighLvl, DecreaseAttribLowLvl, DecreaseHasteLowLvl)
    -- TODO: Need support for decreasing Haste
    local str = GetInfoStructFloat(Target, "str")
    local sta = GetInfoStructFloat(Target, "sta")
    local agi = GetInfoStructFloat(Target, "agi")
    local wis = GetInfoStructFloat(Target, "wis")
    local int = GetInfoStructFloat(Target, "intel")
    local attrib_lvl = DecreaseAttribLowLvl
    if GetLevel(Target) > 6 then
        attrib_lvl = DecreaseAttribHighLvl
    end
    str = math.ceil((str * (attrib_lvl / 100.0)))
    sta = math.ceil((sta * (attrib_lvl / 100.0)))
    agi = math.ceil((agi * (attrib_lvl / 100.0)))
    wis = math.ceil((wis * (attrib_lvl / 100.0)))
    int = math.ceil((int * (attrib_lvl / 100.0)))
    AddSpellBonus(Target, 0, -str) -- STR
    AddSpellBonus(Target, 1, -sta) -- STA
    AddSpellBonus(Target, 2, -agi) -- AGI
    AddSpellBonus(Target, 3, -wis) -- WIS
    AddSpellBonus(Target, 4, -int) -- INT
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end