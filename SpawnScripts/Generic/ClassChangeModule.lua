-- promotion_subset_router.lua
-- Call with: PromoteByKeyStrict(Player, "fp-22") or PromoteByKeyStrict(Player, "qy-28"), etc.

local PROMOTE_MAP = {
  -- Freeport (first two)
  ["fp-22"] = "PromoteToSorcerer",   -- 22
  ["fp-28"] = "PromoteToSummoner",   -- 28

  -- using qeynos as temp freeport holders (seem to be identical in requirements, unless we want to set something specific Qeynos/FP on the Player)
  ["fp-35"] = "PromoteToBardQ",      -- 35
  ["fp-5"]  = "PromoteToBrawlerQ",   -- 5
  ["fp-12"] = "PromoteToClericQ",    -- 12
  ["fp-8"]  = "PromoteToCrusaderQ",  -- 8
  ["fp-15"] = "PromoteToDruidQ",     -- 15
  ["fp-25"] = "PromoteToEnchanterQ", -- 25
  ["fp-38"] = "PromoteToPredatorQ",  -- 38
  ["fp-32"] = "PromoteToRogueQ",     -- 32
  ["fp-18"] = "PromoteToShamanQ",    -- 18
  ["fp-2"]  = "PromoteToWarriorQ",   -- 2
  -- temp freeport placeholders
  
  -- Qeynos (rest)
  ["qy-35"] = "PromoteToBardQ",      -- 35
  ["qy-5"]  = "PromoteToBrawlerQ",   -- 5
  ["qy-12"] = "PromoteToClericQ",    -- 12
  ["qy-8"]  = "PromoteToCrusaderQ",  -- 8
  ["qy-15"] = "PromoteToDruidQ",     -- 15
  ["qy-25"] = "PromoteToEnchanterQ", -- 25
  ["qy-38"] = "PromoteToPredatorQ",  -- 38
  ["qy-32"] = "PromoteToRogueQ",     -- 32
  ["qy-18"] = "PromoteToShamanQ",    -- 18
  ["qy-22"] = "PromoteToSorcererQ",  -- 22
  ["qy-28"] = "PromoteToSummonerQ",  -- 28
  ["qy-2"]  = "PromoteToWarriorQ",   -- 2
}

-- Strict dispatcher for your subset
function PromoteByKeyStrict(Player, key)
  local fname = PROMOTE_MAP[key]
  if not fname then
    return false, "Unsupported promotion key '"..tostring(key).."'."
  end
  local fn = _G[fname]
  if type(fn) ~= "function" then
    return false, "Missing promotion function '"..fname.."'."
  end
  fn(Player)
  SetInfoStructString(Player, "refresh_advspells", "true")
  return true
end

-- Optional: enumerate supported keys (useful for debugging/UI)
function ListSupportedPromotionKeys()
  local keys = {}
  for k,_ in pairs(PROMOTE_MAP) do table.insert(keys, k) end
  table.sort(keys)
  return keys
end

-- PromoteByKeyStrict(Player, "fp-22") → PromoteToSorcerer(Player)
-- PromoteByKeyStrict(Player, "qy-28") → PromoteToSummonerQ(Player)
-- ListSupportedPromotionKeys() → returns the full set you can expose in UI or logs.


------------------------------
-- Freeport Classes
------------------------------


function PromoteToSorcerer(Player)
    SetAdventureClass(Player,22)  -- Sorcerer (Freeport)
    SendMessage(Player, "Congratulations! You are a Sorcerer.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Sorcerer.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- adds (same as your original, with messages preserved)
    EnsureSkills(Player, {
        {id=3820670534, min=1, max=level, message="You have learned the Evocations skill"},    -- Evocations/Mage
        {id=2533124061, min=1, max=level, message="You have learned the Sorcery skill"},       -- Sorcery/Sorcerer
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},      -- Crushing
        {id=3048574950, min=1, max=level, message="You have learned the Piercing skill"},      -- Piercing
        {id=613995491,  min=1, max=level, message="You have learned the Disruption skill"},    -- Disruption
        {id=366253016,  min=1, max=level, message="You have learned the Ministration skill"},  -- Ministration
        {id=3587918036, min=1, max=level, message="You have learned the Ordination skill"},    -- Ordination
        {id=882983852,  min=1, max=level, message="You have learned the Subjugation skill"},   -- Subjugation
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},         -- Focus
        {id=545043066,  min=1, max=level, message="You are now more proficient with a Symbol"},-- Symbol
        {id=887279616,  min=1, max=level, message="You are now more proficient with a Dagger"},-- Dagger
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"}, -- Staff (2h)
    })

    -- removals (exactly your list; deduped & with Spawn→Player fix)
    RemoveSkills(Player, {
        -- Fighter
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Scout
        1921433074,1311635100,296246391,340921594,1514256692,3167106577,2663054519,
        1519965519,1400160844,2711101135,

        -- Priest
        2463145248,3341842907,2581053277,1829443087,3282420779,1624274802,1040683335,
        3467160477,3191839982,

        -- Mage (non-sorcerer lines)
        287643040,2898101972,2950599749,2662430630,193411854,2120065377,2042842194,
        289471519,

        -- Weapons/Armor
        2246237129,241174330,770311065,3177806075,1696217328,2292577688,2954459351,
        1653482350,3173504370,2608320658,570458645,4037812502
    })
end




-- extracted promotion logic (Freeport Summoner)
function PromoteToSummoner(Player)
    SetAdventureClass(Player,28)
    SendMessage(Player, "Congratulations! You are a Summoner.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Summoner.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved)
    EnsureSkills(Player, {
        {id=3820670534, min=1, max=level, message="You have learned the Evocations skill"},   -- Mage
        {id=2120065377, min=1, max=level, message="You have learned the Legerdemain skill"},  -- Summoner
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},
        {id=3048574950, min=1, max=level, message="You have learned the Piercing skill"},
        {id=613995491,  min=1, max=level, message="You have learned the Disruption skill"},
        {id=366253016,  min=1, max=level, message="You have learned the Ministration skill"},
        {id=3587918036, min=1, max=level, message="You have learned the Ordination skill"},
        {id=882983852,  min=1, max=level, message="You have learned the Subjugation skill"},
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},

        -- Proficiencies
        {id=545043066,  min=1, max=level, message="You are now more proficient with a Symbol"},
        {id=887279616,  min=1, max=level, message="You are now more proficient with a Dagger"},
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"},
    })

    -- Removals (consolidated & deduped; Great Spear set to 2380184628; Spawn->Player fixed)
    RemoveSkills(Player, {
        -- Remove Fighter
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Remove Scout
        1921433074,1311635100,296246391,340921594,1514256692,3167106577,2663054519,
        1519965519,1400160844,2711101135,

        -- Remove Priest
        2463145248, -- Inspirations/Priest
        3341842907, -- Theurgy/Cleric
        2581053277, -- Regimens/Templar
        1829443087, -- Inquisitions/Inquisitor
        3282420779, -- Archegenesis/Druid
        1624274802, -- Nature's Reckoning/Fury
        1040683335, -- Nature's Refuge/Warden
        3467160477, -- Fetichisms/Mystic
        3191839982, -- Vehemence/Defiler

        -- Remove Mage (non-summoner subclasses)
        287643040,  -- Enchantments/Enchanter
        2898101972, -- Hallucinations/Illusionist
        2950599749, -- Protean/Coercer
        2533124061, -- Sorcery/Sorcerer
        2662430630, -- Elemental Mastery/Wizard
        193411854,  -- Noctivagance/Warlock
        2042842194, -- Conjurations/Conjurer
        289471519,  -- Sepulchers/Necromancer

        -- REMOVE WEAPON / ARMOR
        2246237129, -- Medium Armor
        241174330,  -- Heavy Armor
        770311065,  -- Mace
        3177806075, -- Fists
        1696217328, -- Sword
        2292577688, -- Great Sword
        2954459351, -- Great Axe
        2380184628, -- Great Spear (correct)
        3173504370, -- Round Shield
        2608320658, -- Kite Shield
        570458645,  -- Tower Shield
        4037812502, -- Buckler
    })
end





------------------------------
-- Qeynos Classes
------------------------------

function PromoteToBardQ(Player)
    SetAdventureClass(Player,35)
    SendMessage(Player, "Congratulations! You are a Bard.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Bard.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (preserve your messages & Safe Fall min=31; omit Spear because you remove it later)
    EnsureSkills(Player, {
        {id=1921433074, min=1,  max=level, message="You have learned the Reconnaissance skill"}, -- Scout
        {id=1311635100, min=1,  max=level, message="You have learned the Melodies skill"},      -- Bard
        {id=1468243427, min=1,  max=level, message="You have learned the Tracking skill"},
        {id=2200201799, min=1,  max=level, message="You have learned the Disarm Trap skill"},
        {id=3232294366, min=31, max=level, message="You have learned the Safe Fall skill"},
        {id=1756482397, min=1,  max=level, message="You have learned the Ranged skill"},
        {id=3048574950, min=1,  max=level, message="You have learned the Piercing skill"},
        {id=418532101,  min=1,  max=level, message="You have learned the Slashing skill"},
        {id=1852383242, min=1,  max=level, message="You have learned the Dual Wield skill"},
        {id=2650425026, min=1,  max=level, message="You have learned the Thrown Weapon skill"},
        {id=2638198038, min=1,  max=level, message="You have learned the Focus skill"},

        -- Proficiencies
        {id=2897193374, min=1,  max=level, message="You are now more proficient with Light Armor"},
        {id=4037812502, min=1,  max=level, message="You are now more proficient with a Buckler"},
        {id=3173504370, min=1,  max=level, message="You are now more proficient with a Roundshield"},
        {id=887279616,  min=1,  max=level, message="You are now more proficient with a Dagger"},
        {id=1743366740, min=1,  max=level, message="You are now more proficient with a Bow"},
        {id=2476073427, min=1,  max=level, message="You are now more proficient with an Axe"},
        {id=770311065,  min=1,  max=level, message="You are now more proficient with a Mace"},
        {id=641561514,  min=1,  max=level, message="You are now more proficient with a Rapier"},
        {id=1696217328, min=1,  max=level, message="You are now more proficient with a Sword"},

        -- Casting skills that appeared in your original block (fixed Spawn→Player)
        {id=613995491,  min=1,  max=level, message="You have learned the Disruption skill"},
        {id=366253016,  min=1,  max=level, message="You have learned the Ministration skill"},
        {id=3587918036, min=1,  max=level, message="You have learned the Ordination skill"},
        {id=882983852,  min=1,  max=level, message="You have learned the Subjugation skill"},
    })

    -- Removals (exactly your lists; deduped, and unchanged semantics)
    RemoveSkills(Player, {
        -- Remove Fighter for Scout
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Removed Advance Scout subclasses
        296246391,340921594,1514256692,2663054519,1519965519,3167106577,1400160844,2711101135,

        -- Removed Priest for Scout
        2463145248,3341842907,2581053277,1829443087,3282420779,1624274802,1040683335,
        3343700951,3467160477,3191839982,

        -- Removed Mage for Scout
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,
        2120065377,2042842194,289471519,

        -- Remove weapon/armor not intended for Bard (per your list)
        2246237129,241174330,3177806075,2292577688,2954459351,1653482350,
        1616998748, -- Spear (omit from adds above to avoid add/remove churn)
        2608320658,570458645,540022425,1553857724,3429135390
    })
end

function PromoteToBrawlerQ(Player)
    SetAdventureClass(Player,5)  -- (preserved from your script)
    SendMessage(Player, "Congratulations! You are a Brawler.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Brawler.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    -- keep this from your original
    RemoveSpellBookEntry(Player, 2550401)

    local level = GetLevel(Player) * 5

    -- Adds (exact messages and IDs preserved; Slashing fixed at 36/36)
    EnsureSkills(Player, {
        {id=1408356869, min=1,  max=level, message="You have learned the Martial skill"},
        {id=3856706740, min=1,  max=level, message="You have learned the Brawling skill"},
        {id=3850377186, min=1,  max=level, message="You have learned the Deflection skill"},
        {id=3232294366, min=1,  max=level, message="You have learned the Safe Fall skill"},
        {id=3421494576, min=1,  max=level, message="You have learned the Crushing skill"},
        {id=418532101,  min=36, max=36,   message="You have learned the Slashing skill"},
        {id=3048574950, min=1,  max=level, message="You have learned the Piercing skill"},
        {id=2638198038, min=1,  max=level, message="You have learned the Focus skill"},

        -- Proficiencies
        {id=2897193374, min=1,  max=level, message="You are now more proficient with Light Armor"},
        {id=3177806075, min=1,  max=level, message="You are now more proficient with your Fists"},
        {id=4037812502, min=1,  max=level, message="You are now more proficient with a Buckler"},
        {id=770311065,  min=1,  max=level, message="You are now more proficient with a Mace"},
        {id=554333641,  min=1,  max=level, message="You are now more proficient with a Hammer"},
        {id=1653482350, min=1,  max=level, message="You are now more proficient with a Great Hammer"},
        {id=3180399725, min=1,  max=level, message="You are now more proficient with a Staff"},
    })

    -- Removals (your lists consolidated & de-duplicated)
    RemoveSkills(Player, {
        -- Removed Advanced Fighter branches
        1124719197,433335062,1209716810,2011726342,3067436248,3809066846,90523872,2741805322,

        -- Removed Scout for Fighter
        1921433074,1311635100,296246391,340921594,1514256692,2663054519,1519965519,3167106577,1400160844,2711101135,

        -- Removed Priest for Fighter
        2463145248,3341842907,2581053277,1829443087,3282420779,1624274802,1040683335,3343700951,3467160477,3191839982,

        -- Removed Mage for Fighter
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,2120065377,2042842194,289471519,

        -- Weapons/armor/casting you explicitly removed
        540022425,   -- Parry
        241174330,   -- Heavy Armor
        3173504370,  -- Roundshield
        2608320658,  -- Kite Shield
        2476073427,  -- Axe
        2954459351,  -- Great Axe
        1696217328,  -- Sword
        2292577688,  -- Great Sword
        1553857724,  -- Investigation
        3429135390,  -- Mystical Destruction
        2200201799,  -- Disarm Trap
        366253016,   -- Ministration
        613995491,   -- Disruption
        882983852,   -- Subjugation
        3587918036,  -- Ordination
    })
end




function PromoteToClericQ(Player)
    SetAdventureClass(Player,12)
    SendMessage(Player, "Congratulations! You are a Cleric.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Cleric.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved). NOTE: skipping 2463145248 (Inspirations), 3341842907 (Theurgy),
    -- and 1653482350 (Great Hammer) to avoid add/remove churn with your removal list below.
    EnsureSkills(Player, {
        -- priest
        {id=2463145248, min=1, max=level, message="You have learned the Inspirations skill"}, -- ??
        {id=3341842907, min=1, max=level, message="You have learned the Theurgy skill"}, -- ??
		
        -- Core combat/casting
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},
        {id=613995491,  min=1, max=level, message="You have learned the Disruption skill"},
        {id=366253016,  min=1, max=level, message="You have learned the Ministration skill"},
        {id=3587918036, min=1, max=level, message="You have learned the Ordination skill"},
        {id=882983852,  min=1, max=level, message="You have learned the Subjugation skill"},
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},

        -- Proficiencies
        {id=4037812502, min=1, max=level, message="You are now more proficient with a Buckler"},
        {id=545043066,  min=1, max=level, message="You are now more proficient with a Symbol"},
        {id=770311065,  min=1, max=level, message="You are now more proficient with a Mace"},
        {id=554333641,  min=1, max=level, message="You are now more proficient with a Hammer"},
        {id=1653482350, min=1, max=level, message="You are now more proficient with a Great Hammer"}, -- ??
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"},
    })

    -- Removals (exactly your lists; de-duplicated)
    RemoveSkills(Player, {
        -- Remove Fighter
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Remove Scout
        1921433074,1311635100,296246391,340921594,1514256692,3167106577,2663054519,
        1519965519,1400160844,2711101135,

        -- Removed Priest (as provided)
        2463145248, -- Inspirations/Priest
        2581053277, -- Regimens/Templar
        1829443087, -- Inquisitions/Inquisitor
        3282420779, -- Archegenesis/Druid
        1624274802, -- Nature's Reckoning/Fury
        1040683335, -- Nature's Refuge/Warden
        3343700951, -- Talismans/Shaman
        3467160477, -- Fetichisms/Mystic
        3191839982, -- Vehemence/Defiler

        -- Removed Mage
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,
        2120065377,2042842194,289471519,

        -- REMOVE WEAPON / ARMOR
        2246237129,241174330,3177806075,2292577688,2380184628,2954459351,1616998748,
        3173504370,2608320658,570458645,
    })
end


function PromoteToCrusaderQ(Player)
    SetAdventureClass(Player,8)
    SendMessage(Player, "Congratulations! You are a Crusader.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Crusader.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (omits any skills that are later removed to avoid churn)
    EnsureSkills(Player, {
        {id=1408356869, min=1, max=level, message="You have learned the Martial skill"},     -- Martial
        {id=3809066846, min=1, max=level, message="You have learned the Faith skill"},     -- Faith
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},    -- Crushing
        {id=418532101,  min=1, max=level, message="You have learned the Slashing skill"},    -- Slashing
        {id=3048574950, min=1, max=level, message="You have learned the Piercing skill"},    -- Piercing
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},       -- Focus

        -- armor/shields & weapon proficiencies you keep
        {id=2897193374, min=1, max=level, message="You are now more proficient with Light Armor"},
        {id=2246237129, min=1, max=level, message="You are now more proficient with Medium Armor"},
        {id=4037812502, min=1, max=level, message="You are now more proficient with a Buckler"},
        {id=3173504370, min=1, max=level, message="You are now more proficient with a Roundshield"},
        {id=2608320658, min=1, max=level, message="You are now more proficient with a Kite Shield"},
        {id=1696217328, min=1, max=level, message="You are now more proficient with a Sword"},
        {id=2292577688, min=1, max=level, message="You are now more proficient with a Great Sword"},
        {id=770311065,  min=1, max=level, message="You are now more proficient with a Mace"},
        {id=554333641,  min=1, max=level, message="You are now more proficient with a Hammer"},
        -- (not adding 1653482350 Great Hammer or 3180399725 Staff since you remove them below)
        -- (not adding 3809066846 Faith, nor caster lines, since you also remove them)
    })

    -- Removals (your lists consolidated & de-duplicated; also fixed the few inverted checks)
    RemoveSkills(Player, {
        -- Removed Advanced Fighter branches
        1124719197,433335062,1209716810,3856706740,2011726342,3067436248,2380184628,90523872,2741805322,

        -- Removed Scout for Fighter
        1921433074,1311635100,296246391,340921594,1514256692,2663054519,1519965519,3167106577,1400160844,2711101135,

        -- Removed Priest for Fighter
        2463145248,3341842907,2581053277,1829443087,3282420779,1624274802,1040683335,3343700951,3467160477,3191839982,

        -- Removed Mage for Fighter
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,2120065377,2042842194,289471519,

        -- Weapon/armor/casting removals (as in your script)
        540022425,   -- Parry
        241174330,   -- Heavy Armor
        3177806075,  -- Fists
        2476073427,  -- Axe
        2954459351,  -- Great Axe
        3180399725,  -- Staff (2h)
        1553857724,  -- Investigation
        3429135390,  -- Mystical Destruction
        2200201799,  -- Disarm Trap
        366253016,   -- Ministration
        613995491,   -- Disruption
        882983852,   -- Subjugation
        3587918036,  -- Ordination
        1653482350,  -- Great Hammer
    })
end


-- extracted Qeynos Druid promotion logic
function PromoteToDruidQ(Player)
    SetAdventureClass(Player,15)
    SendMessage(Player, "Congratulations! You are a Druid.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Druid.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved; omit IDs that are removed below)
    EnsureSkills(Player, {
        -- Priest/Druid lines you keep
        {id=2463145248, min=1, max=level, message="You have learned the Inspirations skill"}, -- Inspirations
        {id=3282420779, min=1, max=level, message="You have learned the Archegenesis skill"}, -- Druid
        -- {id=3341842907, min=1, max=level, message="You have learned the Theurgy skill"},    -- omitted (removed below)

        -- combat + casting
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},
        {id=418532101,  min=1, max=level, message="You have learned the Slashing skill"},
        {id=613995491,  min=1, max=level, message="You have learned the Disruption skill"},
        {id=366253016,  min=1, max=level, message="You have learned the Ministration skill"},
        {id=3587918036, min=1, max=level, message="You have learned the Ordination skill"},
        {id=882983852,  min=1, max=level, message="You have learned the Subjugation skill"},
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},

        -- proficiencies
        {id=4037812502, min=1, max=level, message="You are now more proficient with a Buckler"},
        {id=770311065,  min=1, max=level, message="You are now more proficient with a Mace"},
        {id=1696217328, min=1, max=level, message="You are now more proficient with a Sword"},
        {id=554333641,  min=1, max=level, message="You are now more proficient with a Hammer"},
        {id=1653482350, min=1, max=level, message="You are now more proficient with a Great Hammer"}, -- omitted (removed below)
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"},
    })

    -- Removals (exactly your lists; de-duplicated)
    RemoveSkills(Player, {
        -- Remove Fighter
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Remove Scout
        1921433074,1311635100,296246391,340921594,1514256692,3167106577,2663054519,
        1519965519,1400160844,2711101135,

        -- Remove Priest (non-druid lines)
        3341842907, -- Theurgy/Cleric
        2581053277, -- Regimens/Templar
        1829443087, -- Inquisitions/Inquisitor
        3343700951, -- Talismans/Shaman
        1624274802, -- Nature's Reckoning/Fury
        1040683335, -- Nature's Refuge/Warden
        3467160477, -- Fetichisms/Mystic
        3191839982, -- Vehemence/Defiler

        -- Remove Mage
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,
        2120065377,2042842194,289471519,

        -- REMOVE WEAPON / ARMOR
        2246237129, -- Medium Armor
        241174330,  -- Heavy Armor
        3177806075, -- Fists
        2292577688, -- Great Sword
        2954459351, -- Great Axe
        2380184628, -- Great Spear
        3173504370, -- Round Shield
        2608320658, -- Kite Shield
        570458645,  -- Tower Shield
        545043066,  -- Symbol
    })
end

-- extracted promotion logic (Qeynos Enchanter)
function PromoteToEnchanterQ(Player)
    SetAdventureClass(Player,25)
    SendMessage(Player, "Congratulations! You are an Enchanter.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are an Enchanter.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved; omit Symbol because you remove it later)
    EnsureSkills(Player, {
        {id=3820670534, min=1, max=level, message="You have learned the Evocations skill"},  -- Mage
        {id=287643040,  min=1, max=level, message="You have learned the Enchantments skill"},-- Enchanter
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},
        {id=3048574950, min=1, max=level, message="You have learned the Piercing skill"},
        {id=613995491,  min=1, max=level, message="You have learned the Disruption skill"},
        {id=366253016,  min=1, max=level, message="You have learned the Ministration skill"},
        {id=3587918036, min=1, max=level, message="You have learned the Ordination skill"},
        {id=882983852,  min=1, max=level, message="You have learned the Subjugation skill"},
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},
        {id=887279616,  min=1, max=level, message="You are now more proficient with a Dagger"},
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"},
    })

    -- Removals (exactly your lists; de-duplicated)
    RemoveSkills(Player, {
        -- Removed Fighter
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Removed Scout
        1921433074,1311635100,296246391,340921594,1514256692,3167106577,2663054519,
        1519965519,1400160844,2711101135,

        -- Removed Priest
        2463145248,3341842907,2581053277,1829443087,3282420779,1624274802,1040683335,
        3467160477,3191839982,

        -- Removed Mage (non-enchanter subclasses)
        2898101972,2950599749,2533124061,2662430630,193411854,2120065377,2042842194,289471519,

        -- REMOVE WEAPON / ARMOR
        2246237129, -- Medium Armor
        241174330,  -- Heavy Armor
        770311065,  -- Mace
        3177806075, -- Fists
        1696217328, -- Sword
        2292577688, -- Great Sword
        2954459351, -- Great Axe
        1653482350, -- Great Spear
        3173504370, -- Round Shield
        2608320658, -- Kite Shield
        570458645,  -- Tower Shield
        545043066,  -- Symbol
        4037812502, -- Buckler
    })
end

-- extracted Qeynos Predator promotion logic
function PromoteToPredatorQ(Player)
    SetAdventureClass(Player,38)
    SendMessage(Player, "Congratulations! You are a Predator.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Predator.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved; Safe Fall min=31)
    EnsureSkills(Player, {
        -- scout core
        {id=1921433074, min=1,  max=level, message="You have learned the Reconnaissance skill"},
        {id=3167106577, min=1,  max=level, message="You have learned the Stalking skill"},
        {id=1468243427, min=1,  max=level, message="You have learned the Tracking skill"},
        {id=2200201799, min=1,  max=level, message="You have learned the Disarm Trap skill"},
        {id=3232294366, min=31, max=level, message="You have learned the Safe Fall skill"},
        {id=1756482397, min=1,  max=level, message="You have learned the Ranged skill"},
        {id=3048574950, min=1,  max=level, message="You have learned the Piercing skill"},
        {id=418532101,  min=1,  max=level, message="You have learned the Slashing skill"},
        {id=1852383242, min=1,  max=level, message="You have learned the Dual Wield skill"},
        {id=2650425026, min=1,  max=level, message="You have learned the Thrown Weapon skill"},
        {id=2638198038, min=1,  max=level, message="You have learned the Focus skill"},

        -- proficiencies
        {id=2897193374, min=1,  max=level, message="You are now more proficient with Light Armor"},
        {id=4037812502, min=1,  max=level, message="You are now more proficient with a Buckler"},
        {id=3173504370, min=1,  max=level, message="You are now more proficient with a Roundshield"},
        {id=887279616,  min=1,  max=level, message="You are now more proficient with a Dagger"},
        {id=1743366740, min=1,  max=level, message="You are now more proficient with a Bow"},
        {id=2476073427, min=1,  max=level, message="You are now more proficient with an Axe"},
        {id=770311065,  min=1,  max=level, message="You are now more proficient with a Mace"},
        {id=641561514,  min=1,  max=level, message="You are now more proficient with a Rapier"},
        {id=1696217328, min=1,  max=level, message="You are now more proficient with a Sword"},
        {id=1616998748, min=1,  max=level, message="You are now more proficient with a Spear"},
    })

    -- Removals (your lists consolidated & de-duplicated; Spawn→Player fixed)
    RemoveSkills(Player, {
        -- Remove Fighter for Scout
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Removed Advance Scout (non-Predator scout branches)
        1311635100,296246391,340921594,1514256692,2663054519,1519965519,1400160844,2711101135,

        -- Removed Priest for Scout
        2463145248,3341842907,2581053277,1829443087,3282420779,1624274802,1040683335,
        3343700951,3467160477,3191839982,

        -- Removed Mage for Scout
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,
        2120065377,2042842194,289471519,

        -- REMOVE WEAPON / ARMOR / misc
        2246237129, -- Medium Armor
        241174330,  -- Heavy Armor
        3177806075, -- Fists
        2292577688, -- Great Sword
        2954459351, -- Great Axe
        1653482350, -- Great Spear
        2608320658, -- Kite Shield
        570458645,  -- Tower Shield
        540022425,  -- Parry
        1553857724, -- Investigation
        3429135390, -- Mystical Destruction
        366253016,  -- Ministration
        613995491,  -- Disruption
        882983852,  -- Subjugation
        3587918036, -- Ordination
    })
end


-- extracted Qeynos Rogue promotion logic
function PromoteToRogueQ(Player)
    SetAdventureClass(Player,32)
    SendMessage(Player, "Congratulations! You are a Rogue.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Rogue.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved; Safe Fall min=31; Spear omitted to avoid add→remove churn)
    EnsureSkills(Player, {
        -- Scout core
        {id=1921433074, min=1,  max=level, message="You have learned the Reconnaissance skill"},
        {id=1514256692, min=1,  max=level, message="You have learned the Skulldugery skill"},
        {id=1468243427, min=1,  max=level, message="You have learned the Tracking skill"},
        {id=2200201799, min=1,  max=level, message="You have learned the Disarm Trap skill"},
        {id=3232294366, min=31, max=level, message="You have learned the Safe Fall skill"},
        {id=1756482397, min=1,  max=level, message="You have learned the Ranged skill"},
        {id=3048574950, min=1,  max=level, message="You have learned the Piercing skill"},
        {id=418532101,  min=1,  max=level, message="You have learned the Slashing skill"},
        {id=1852383242, min=1,  max=level, message="You have learned the Dual Wield skill"},
        {id=2650425026, min=1,  max=level, message="You have learned the Thrown Weapon skill"},
        {id=2638198038, min=1,  max=level, message="You have learned the Focus skill"},

        -- Proficiencies
        {id=2897193374, min=1,  max=level, message="You are now more proficient with Light Armor"},
        {id=4037812502, min=1,  max=level, message="You are now more proficient with a Buckler"},
        {id=3173504370, min=1,  max=level, message="You are now more proficient with a Roundshield"},
        {id=1616998748, min=1, max=level, message="You are now more proficient with a Spear"}, -- omitted
        {id=887279616,  min=1,  max=level, message="You are now more proficient with a Dagger"},
        {id=1743366740, min=1,  max=level, message="You are now more proficient with a Bow"},
        {id=2476073427, min=1,  max=level, message="You are now more proficient with an Axe"},
        {id=770311065,  min=1,  max=level, message="You are now more proficient with a Mace"},
        {id=641561514,  min=1,  max=level, message="You are now more proficient with a Rapier"},
        {id=1696217328, min=1,  max=level, message="You are now more proficient with a Sword"},
    })

    -- Removals (your lists consolidated & de-duplicated; Spawn→Player fixed)
    RemoveSkills(Player, {
        -- Remove Fighter for Scout
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Removed Advance Scout (non-Rogue scout branches)
        1311635100,296246391,340921594,3167106577,2663054519,1519965519,1400160844,2711101135,

        -- Removed Priest for Scout
        2463145248,3341842907,2581053277,1829443087,3282420779,1624274802,1040683335,
        3343700951,3467160477,3191839982,

        -- Removed Mage for Scout
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,
        2120065377,2042842194,289471519,

        -- REMOVE WEAPON / ARMOR / misc
        2246237129, -- Medium Armor
        241174330,  -- Heavy Armor
        3177806075, -- Fists
        2292577688, -- Great Sword
        2954459351, -- Great Axe
        1653482350, -- Great Spear
        2608320658, -- Kite Shield
        570458645,  -- Tower Shield
        540022425,  -- Parry
        1553857724, -- Investigation
        3429135390, -- Mystical Destruction
        366253016,  -- Ministration
        613995491,  -- Disruption
        882983852,  -- Subjugation
        3587918036, -- Ordination
    })
end


-- extracted Qeynos Shaman promotion logic
function PromoteToShamanQ(Player)
    SetAdventureClass(Player,18)
    SendMessage(Player, "Congratulations! You are a Shaman.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Shaman.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved)
    EnsureSkills(Player, {
        -- priest/shaman lines
        {id=2463145248, min=1, max=level, message="You have learned the Inspirations skill"}, -- Inspirations
        {id=3343700951, min=1, max=level, message="You have learned the Talismans skill"},    -- Shaman

        -- combat + casting
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},
        {id=3048574950, min=1, max=level, message="You have learned the Piercing skill"},
        {id=613995491,  min=1, max=level, message="You have learned the Disruption skill"},
        {id=366253016,  min=1, max=level, message="You have learned the Ministration skill"},
        {id=3587918036, min=1, max=level, message="You have learned the Ordination skill"},
        {id=882983852,  min=1, max=level, message="You have learned the Subjugation skill"},
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},

        -- proficiencies
        {id=4037812502, min=1, max=level, message="You are now more proficient with a Buckler"},
        {id=770311065,  min=1, max=level, message="You are now more proficient with a Mace"},
        {id=1616998748, min=1, max=level, message="You are now more proficient with a Spear"},
        {id=554333641,  min=1, max=level, message="You are now more proficient with a Hammer"},
        {id=1653482350, min=1, max=level, message="You are now more proficient with a Great Hammer"},
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"},
    })

    -- Removals (consolidated; Great Spear corrected to 2380184628)
    RemoveSkills(Player, {
        -- Remove Fighter
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Remove Scout
        1921433074,1311635100,296246391,340921594,1514256692,3167106577,2663054519,
        1519965519,1400160844,2711101135,

        -- Remove Priest (non-shaman lines)
        3341842907, -- Theurgy/Cleric
        2581053277, -- Regimens/Templar
        1829443087, -- Inquisitions/Inquisitor
        3282420779, -- Archegenesis/Druid
        1624274802, -- Nature's Reckoning/Fury
        1040683335, -- Nature's Refuge/Warden
        3467160477, -- Fetichisms/Mystic
        3191839982, -- Vehemence/Defiler

        -- Remove Mage
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,
        2120065377,2042842194,289471519,

        -- REMOVE WEAPON / ARMOR
        2246237129, -- Medium Armor
        241174330,  -- Heavy Armor
        3177806075, -- Fists
        2292577688, -- Great Sword
        2954459351, -- Great Axe
        2380184628, -- Great Spear (corrected)
        3173504370, -- Round Shield
        2608320658, -- Kite Shield
        570458645,  -- Tower Shield
        545043066,  -- Symbol
    })
end

-- extracted promotion logic (Qeynos Sorcerer)
function PromoteToSorcererQ(Player)
    SetAdventureClass(Player,22)
    SendMessage(Player, "Congratulations! You are a Sorcerer.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Sorcerer.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved)
    EnsureSkills(Player, {
        {id=3820670534, min=1, max=level, message="You have learned the Evocations skill"},  -- Mage
        {id=2533124061, min=1, max=level, message="You have learned the Sorcery skill"},     -- Sorcerer
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},
        {id=3048574950, min=1, max=level, message="You have learned the Piercing skill"},
        {id=613995491,  min=1, max=level, message="You have learned the Disruption skill"},
        {id=366253016,  min=1, max=level, message="You have learned the Ministration skill"},
        {id=3587918036, min=1, max=level, message="You have learned the Ordination skill"},
        {id=882983852,  min=1, max=level, message="You have learned the Subjugation skill"},
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},

        -- Proficiencies
        {id=545043066,  min=1, max=level, message="You are now more proficient with a Symbol"},
        {id=887279616,  min=1, max=level, message="You are now more proficient with a Dagger"},
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"},
    })

    -- Removals (consolidated & deduped; Great Spear corrected)
    RemoveSkills(Player, {
        -- Remove Fighter
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Remove Scout
        1921433074,1311635100,296246391,340921594,1514256692,3167106577,2663054519,
        1519965519,1400160844,2711101135,

        -- Remove Priest
        2463145248, -- Inspirations/Priest (fixed Spawn->Player)
        3341842907, -- Theurgy/Cleric
        2581053277, -- Regimens/Templar
        1829443087, -- Inquisitions/Inquisitor
        3282420779, -- Archegenesis/Druid
        1624274802, -- Nature's Reckoning/Fury
        1040683335, -- Nature's Refuge/Warden
        3467160477, -- Fetichisms/Mystic
        3191839982, -- Vehemence/Defiler

        -- Remove Mage (non-sorcerer subclasses)
        287643040,  -- Enchantments/Enchanter
        2898101972, -- Hallucinations/Illusionist
        2950599749, -- Protean/Coercer
        2662430630, -- Elemental Mastery/Wizard
        193411854,  -- Noctivagance/Warlock
        2120065377, -- Legerdemain/Summoner
        2042842194, -- Conjurations/Conjurer
        289471519,  -- Sepulchers/Necromancer

        -- REMOVE WEAPON / ARMOR
        2246237129, -- Medium Armor
        241174330,  -- Heavy Armor
        770311065,  -- Mace
        3177806075, -- Fists
        1696217328, -- Sword
        2292577688, -- Great Sword
        2954459351, -- Great Axe
        2380184628, -- Great Spear (correct)
        3173504370, -- Round Shield
        2608320658, -- Kite Shield
        570458645,  -- Tower Shield
        4037812502, -- Buckler
    })
end


-- extracted promotion logic (Qeynos Summoner)
function PromoteToSummonerQ(Player)
    SetAdventureClass(Player,28)
    SendMessage(Player, "Congratulations! You are a Summoner.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Summoner.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved)
    EnsureSkills(Player, {
        {id=3820670534, min=1, max=level, message="You have learned the Evocations skill"},   -- Mage
        {id=2120065377, min=1, max=level, message="You have learned the Legerdemain skill"},  -- Summoner
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},
        {id=3048574950, min=1, max=level, message="You have learned the Piercing skill"},
        {id=613995491,  min=1, max=level, message="You have learned the Disruption skill"},
        {id=366253016,  min=1, max=level, message="You have learned the Ministration skill"},
        {id=3587918036, min=1, max=level, message="You have learned the Ordination skill"},
        {id=882983852,  min=1, max=level, message="You have learned the Subjugation skill"},
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},

        -- Proficiencies (you keep these)
        {id=545043066,  min=1, max=level, message="You are now more proficient with a Symbol"},
        {id=887279616,  min=1, max=level, message="You are now more proficient with a Dagger"},
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"},
    })

    -- Removals (consolidated & deduped; Great Spear set to 2380184628; Spawn->Player fixed)
    RemoveSkills(Player, {
        -- Remove Fighter
        1408356869,1124719197,433335062,1209716810,3856706740,2011726342,3067436248,
        3809066846,90523872,2741805322,

        -- Remove Scout
        1921433074,1311635100,296246391,340921594,1514256692,3167106577,2663054519,
        1519965519,1400160844,2711101135,

        -- Remove Priest
        2463145248, -- Inspirations/Priest (fixed to Player)
        3341842907, -- Theurgy/Cleric
        2581053277, -- Regimens/Templar
        1829443087, -- Inquisitions/Inquisitor
        3282420779, -- Archegenesis/Druid
        1624274802, -- Nature's Reckoning/Fury
        1040683335, -- Nature's Refuge/Warden
        3467160477, -- Fetichisms/Mystic
        3191839982, -- Vehemence/Defiler

        -- Remove Mage (non-summoner subclasses)
        287643040,  -- Enchantments/Enchanter
        2898101972, -- Hallucinations/Illusionist
        2950599749, -- Protean/Coercer
        2533124061, -- Sorcery/Sorcerer
        2662430630, -- Elemental Mastery/Wizard
        193411854,  -- Noctivagance/Warlock
        2042842194, -- Conjurations/Conjurer
        289471519,  -- Sepulchers/Necromancer

        -- REMOVE WEAPON / ARMOR
        2246237129, -- Medium Armor
        241174330,  -- Heavy Armor
        770311065,  -- Mace
        3177806075, -- Fists
        1696217328, -- Sword
        2292577688, -- Great Sword
        2954459351, -- Great Axe
        2380184628, -- Great Spear (correct)
        3173504370, -- Round Shield
        2608320658, -- Kite Shield
        570458645,  -- Tower Shield
        4037812502, -- Buckler
    })
end

-- extracted promotion logic (Qeynos Warrior)
function PromoteToWarriorQ(Player)
    SetAdventureClass(Player,2)
    SendMessage(Player, "Congratulations! You are a Warrior.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Warrior.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

    local level = GetLevel(Player) * 5

    -- Adds (messages preserved)
    EnsureSkills(Player, {
        -- core
        {id=1408356869, min=1, max=level, message="You have learned the Martial skill"},
        {id=1124719197, min=1, max=level, message="You have learned the Tactics skill"},
        {id=3421494576, min=1, max=level, message="You have learned the Crushing skill"},
        {id=418532101,  min=1, max=level, message="You have learned the Slashing skill"},
        {id=1756482397, min=1, max=level, message="You have learned the Ranged skill"},
        {id=2650425026, min=1, max=level, message="You have learned the Thrown Weapon skill"},
        {id=3048574950, min=1, max=level, message="You have learned the Piercing skill"},
        {id=1852383242, min=1, max=level, message="You have learned the Dual Wield skill"},
        {id=2638198038, min=1, max=level, message="You have learned the Focus skill"},

        -- proficiencies
        {id=2897193374, min=1, max=level, message="You are now more proficient with Light Armor"},
        {id=2246237129, min=1, max=level, message="You are now more proficient with Medium Armor"},
        {id=1743366740, min=1, max=level, message="You are now more proficient with a Bow"},
        {id=4037812502, min=1, max=level, message="You are now more proficient with a Buckler"},
        {id=3173504370, min=1, max=level, message="You are now more proficient with a Roundshield"},
        {id=2476073427, min=1, max=level, message="You are now more proficient with an Axe"},
        {id=2954459351, min=1, max=level, message="You are now more proficient with a Great Axe"},
        {id=1696217328, min=1, max=level, message="You are now more proficient with a Sword"},
        {id=2292577688, min=1, max=level, message="You are now more proficient with a Great Sword"},
        {id=770311065,  min=1, max=level, message="You are now more proficient with a Mace"},
        {id=554333641,  min=1, max=level, message="You are now more proficient with a Hammer"},
        {id=1653482350, min=1, max=level, message="You are now more proficient with a Great Hammer"},
        {id=3180399725, min=1, max=level, message="You are now more proficient with a Staff"},
        {id=641561514,  min=1, max=level, message="You are now more proficient with a Rapier"},
        {id=1616998748, min=1, max=level, message="You are now more proficient with a Spear"},
        {id=570458645,  min=1, max=level, message="You are now more proficient with a Tower Shield"},
        {id=2608320658, min=1, max=level, message="You are now more proficient with a Kite Shield"},
    })

    -- Removals (consolidated & de-duplicated)
    RemoveSkills(Player, {
        -- Removed Advanced Fighter branches (non-Warrior)
        433335062,  -- Berserk/Berserker
        1209716810, -- Protection/Guardian
        3856706740, -- Brawl/Brawling
        2011726342, -- Tranquility/Monk
        3067436248, -- Physicality/Bruiser
        3809066846, -- Faith/Crusader
        90523872,   -- Determined Faith/Paladin
        2741805322, -- Determined Zeal/Shadowknight

        -- Removed Scout for Fighter
        1921433074,1311635100,296246391,340921594,1514256692,2663054519,1519965519,
        3167106577,1400160844,2711101135,

        -- Removed Priest for Fighter
        2463145248,3341842907,2581053277,1829443087,3282420779,1624274802,1040683335,
        3343700951,3467160477,3191839982,

        -- Removed Mage for Fighter
        3820670534,287643040,2898101972,2950599749,2533124061,2662430630,193411854,
        2120065377,2042842194,289471519,

        -- REMOVE WEAPON / ARMOR / misc
        540022425,  -- Parry
        241174330,  -- Heavy Armor
        3177806075, -- Fists
        1553857724, -- Investigation
        3429135390, -- Mystical Destruction
        2200201799, -- Disarm Trap
        366253016,  -- Ministration
        613995491,  -- Disruption
        882983852,  -- Subjugation
        3587918036, -- Ordination
    })
end


------------------------------
-- Helpers
------------------------------

function EnsureSkills(Player, skills)
    for _, s in ipairs(skills) do
        if not HasSkill(Player, s.id) then
            AddSkill(Player, s.id, s.min, s.max)
            if s.message ~= nil then
                SendMessage(Player, s.message)
            end
        end
    end
end

function RemoveSkills(Player, skill_ids)
    for _, id in ipairs(skill_ids) do
        if HasSkill(Player, id) then
            RemoveSkill(Player, id)
        end
    end
end
