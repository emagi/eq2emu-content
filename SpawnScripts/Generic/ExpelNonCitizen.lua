--[[
    Script Name    : SpawnScripts/Generic/ExpelNonCitizen.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.03 01:11:17
    Script Purpose : Classic Script:
                     - Checks player citizenship status and class advancement
                     - Boots non-citizen/refugees back to racial hoods
                     - Expels non-citizens outside the city
                     - Guides advancement quests for 8–9 (archetype/class)
--]]

dofile("SpawnScripts/Generic/AdvancementGaze.lua")

function NonCitizen(NPC, Spawn)
    -- Class advancement check (only when sufficiently allied)
    if GetFactionAmount(Spawn, 11) >= 5000 then
        if GetLevel(Spawn) == 8 or GetLevel(Spawn) == 9 then -- Qeynos classes
            ClassCheck_Q(NPC, Spawn)
        end
    elseif GetFactionAmount(Spawn, 12) >= 5000 then
        if GetLevel(Spawn) == 8 or GetLevel(Spawn) == 9 then -- Freeport classes
            ClassCheck_FP(NPC, Spawn)
        end
    end

    local invul = IsInvulnerable(Spawn)
    local zone  = GetZone(NPC)
    local zid   = GetZoneID(zone)

    -- Determine city alignment of current zone
    local GOOD, EVIL, NEUTRAL = false, false, false
    if     (zid >= 220 and zid <= 238)     -- Qeynos villages / suburbs
        or (zid == 207)                    -- North Qeynos?
        or (zid >= 195 and zid <= 198)     -- Qeynos proper
        or (zid == 589 or zid == 660)      -- Additional good zones
        or (zid == 470) then               -- Fair/instance as good
        GOOD = true
    elseif zid == 45 then
        NEUTRAL = true
    elseif (zid >= 124 and zid <= 128)     -- Freeport villages / suburbs
        or (zid >= 134 and zid <= 168) then
        EVIL = true
    end

    -- GOOD city logic
    if GOOD and GetFactionAmount(Spawn, 11) > 0 and not invul then
        if not HasCompletedQuest(Spawn,5718) and
           not HasCompletedQuest(Spawn,5719) and
           not HasCompletedQuest(Spawn,5720) and
           not HasCompletedQuest(Spawn,5721) and
           not HasCompletedQuest(Spawn,5722) and
           not HasCompletedQuest(Spawn,5723) then
            -- Archetype classes = possible refugees
            local cls = GetClass(Spawn)
            if cls == 1 or cls == 11 or cls == 21 or cls == 31 then
                SetInfoStructUInt(NPC, "override_primary_weapon", 1)
                SetInfoStructUInt(NPC, "primary_weapon_damage_low", 0)
                SetInfoStructUInt(NPC, "primary_weapon_damage_high", 0)

                Attack(NPC, Spawn)
                AddTimer(NPC, 500, "Expel", 1, Spawn)
                SendMessage(Spawn, "A guard has spotted you!", "red")
                PlaySound(Spawn, "sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
            end
        end
    elseif GOOD and GetFactionAmount(Spawn, 11) < 1000 and not invul then
        -- Non-citizens inside Qeynos
        SetInfoStructUInt(NPC, "override_primary_weapon", 0)
        Attack(NPC, Spawn)
        AddTimer(NPC, 500, "ExpelOtherFaction", 1, Spawn)
        SendPopUpMessage(Spawn, "A guard has spotted you!", 250, 0, 0)
        SendMessage(Spawn, "A guard has spotted you!", "red")
        PlaySound(Spawn, "sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    end

    -- EVIL city logic
    if EVIL and GetFactionAmount(Spawn, 12) > 0 and not invul then
        if not HasCompletedQuest(Spawn,5866) and
           not HasCompletedQuest(Spawn,5867) and
           not HasCompletedQuest(Spawn,5868) and
           not HasCompletedQuest(Spawn,5869) and
           not HasCompletedQuest(Spawn,5870) and
           not HasCompletedQuest(Spawn,5871) then
            -- Archetype classes = possible refugees
            local cls = GetClass(Spawn)
            if cls == 1 or cls == 11 or cls == 21 or cls == 31 then
                SetInfoStructUInt(NPC, "override_primary_weapon", 1)
                SetInfoStructUInt(NPC, "primary_weapon_damage_low", 0)
                SetInfoStructUInt(NPC, "primary_weapon_damage_high", 0)

                Attack(NPC, Spawn)
                AddTimer(NPC, 500, "Expel_FP", 1, Spawn)  -- fixed: was "Expel"
                SendMessage(Spawn, "A guard has spotted you!", "red")
                PlaySound(Spawn, "sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
            end
        end
    elseif EVIL and GetFactionAmount(Spawn, 12) < 1000 and not invul then
        -- Non-citizens inside Freeport
        SetInfoStructUInt(NPC, "override_primary_weapon", 0)
        Attack(NPC, Spawn)
        AddTimer(NPC, 500, "ExpelOtherFaction_FP", 1, Spawn)
        SendPopUpMessage(Spawn, "A guard has spotted you!", 250, 0, 0)
        SendMessage(Spawn, "A guard has spotted you!", "red")
        PlaySound(Spawn, "sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    end
end

function Expel(NPC, Spawn)
    local invul = IsInvulnerable(Spawn)
    if IsInCombat(NPC) then
        AddTimer(NPC, 500, "Expel", 1, Spawn)
        if not invul and GetDistance(Spawn, NPC) <= 4 then
            CastSpell(NPC, 1225)
            PlayAnimation(Spawn, 11764)
            ExpeltoHood(NPC, Spawn)
            SetInvulnerable(Spawn)
            SendPopUpMessage(Spawn, "Refugee! You are not allowed inside the walls of Qeynos!", 250, 0, 0)
            SendMessage(Spawn, "Refugee! You are not allowed inside the walls of Qeynos!", "red")
            PlaySound(Spawn, "sounds/ui/ui_duel_defeat.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
            End (NPC, Spawn)
            -- SetHP(Spawn, SetMaxHP(Spawn))
        end
    end
end

function Expel_FP(NPC, Spawn)
    local invul = IsInvulnerable(Spawn)
    if IsInCombat(NPC) then
        AddTimer(NPC, 500, "Expel_FP", 1, Spawn) -- fixed: self-loop to Expel_FP
        if not invul and GetDistance(Spawn, NPC) <= 4 then
            CastSpell(NPC, 1225)
            PlayAnimation(Spawn, 11764)
            ExpeltoHood_FP(NPC, Spawn)
            SetInvulnerable(Spawn)
            SendPopUpMessage(Spawn, "Refugee! You are not allowed inside the walls of Freeport!", 250, 0, 0)
            SendMessage(Spawn, "Refugee! You are not allowed inside the walls of Freeport!", "red")
            PlaySound(Spawn, "sounds/ui/ui_duel_defeat.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
            End (NPC, Spawn)
            -- SetHP(Spawn, SetMaxHP(Spawn))
        end
    end
end

function End (NPC, Spawn)
    ClearHate(NPC, Spawn)
    SetInCombat(Spawn, false)
    SetInCombat(NPC, false)
    ClearEncounter(NPC)
    SetTarget(Spawn, nil)
    SetInfoStructUInt(NPC, "override_primary_weapon", 0)
end

function ExpelOtherFaction(NPC, Spawn)
    local invul = IsInvulnerable(Spawn)
    if IsInCombat(NPC) then
        if not invul and GetDistance(Spawn, NPC) <= 5 then
            CastSpell(NPC, 1225)
            PlayAnimation(Spawn, 11764)
            ExpeltoOutofCity(NPC, Spawn)
            SetInvulnerable(Spawn)
            SendPopUpMessage(Spawn, "You are not allowed inside the walls of Qeynos!", 250, 0, 0)
            SendMessage(Spawn, "You are not allowed inside the walls of Qeynos!", "red")
            PlaySound(Spawn, "sounds/ui/ui_duel_defeat.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
            SetHP(Spawn, SetMaxHP(Spawn))
            End (NPC, Spawn)
        end
    end
end

function ExpelOtherFaction_FP(NPC, Spawn)
    local invul = IsInvulnerable(Spawn)
    if IsInCombat(NPC) then
        if not invul and GetDistance(Spawn, NPC) <= 5 then
            CastSpell(NPC, 1225)
            PlayAnimation(Spawn, 11764)
            ExpeltoOutofCity_FP(NPC, Spawn)
            SetInvulnerable(Spawn)
            SendPopUpMessage(Spawn, "You are not allowed inside the walls of Freeport!", 250, 0, 0)
            SendMessage(Spawn, "You are not allowed inside the walls of Freeport!", "red")
            PlaySound(Spawn, "sounds/ui/ui_duel_defeat.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
            SetHP(Spawn, SetMaxHP(Spawn))
            End (NPC, Spawn)
        end
    end
end

function ExpeltoOutofCity(NPC, Spawn)
    local ZoneRef = GetZone("Antonica")
    Zone(ZoneRef, Spawn, -130.85, -15.10, -77.62, 137.28)
end

function ExpeltoOutofCity_FP(NPC, Spawn)
    local ZoneRef = GetZone("Commonlands")
    Zone(ZoneRef, Spawn, -382.22, -46.97, -809.45, 0)
end

function ExpeltoHood(NPC, Spawn)
    local Race = GetRace(Spawn)

    -- Kerra / Human
    if Race == 11 or Race == 9 then
        local ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef, Spawn)

    -- Erudite
    elseif Race == 3 or Race == 20 then
        local ZoneRef = GetZone("Starcrest")
        Zone(ZoneRef, Spawn)

    -- Barbarian / Dwarf
    elseif Race == 0 or Race == 2 then
        local ZoneRef = GetZone("Graystone")
        Zone(ZoneRef, Spawn)

    -- Froglok / High Elf
    elseif Race == 4 or Race == 8 then
        local ZoneRef = GetZone("Castleview")
        Zone(ZoneRef, Spawn)

    -- Half Elf / Wood Elf
    elseif Race == 6 or Race == 15 then
        local ZoneRef = GetZone("Willowwood")
        Zone(ZoneRef, Spawn)

    -- Gnome / Halfling
    elseif Race == 5 or Race == 7 then
        local ZoneRef = GetZone("Baubbleshire")
        Zone(ZoneRef, Spawn)

    else
        local ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef, Spawn)
    end
end

function ExpeltoHood_FP(NPC, Spawn)
    local Race = GetRace(Spawn)

    -- Kerra / Erudite
    if Race == 11 or Race == 3 then
        local ZoneRef = GetZone("Stonestair")
        Zone(ZoneRef, Spawn)

    -- Barbarian / Iksar
    elseif Race == 0 or Race == 10 then
        local ZoneRef = GetZone("ScaleYard")
        Zone(ZoneRef, Spawn)

    -- Ogre / Troll
    elseif Race == 12 or Race == 14 then
        local ZoneRef = GetZone("BigBend")
        Zone(ZoneRef, Spawn)

    -- Dark Elf
    elseif Race == 1 or Race == 19 then
        local ZoneRef = GetZone("Longshadow")
        Zone(ZoneRef, Spawn)

    -- Half Elf / Human
    elseif Race == 6 or Race == 9 or Race == 20 then
        local ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef, Spawn)

    -- Gnome / Ratonga
    elseif Race == 5 or Race == 13 then
        local ZoneRef = GetZone("TempleSt")
        Zone(ZoneRef, Spawn)

    else
        local ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef, Spawn)
    end
end
