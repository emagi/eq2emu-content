function hailed(NPC, Spawn)
	zone = GetZone(NPC)
        Say(NPC, "Hey! " .. GetZonePlayerMinLevel(zone))
end
