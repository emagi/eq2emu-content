--[[
    Script Name    : SpawnScripts/SummoningResearchChamber/BookofSummoningSign.lua
    Script Author  : dorbin
    Script Date    : 2024.08.10 05:08:10
    Script Purpose : 
                   : 
--]]
local SummonerQuest = 5905
local QuestItem = 1001113

function spawn(NPC)

end

--

function casted_on(NPC, Spawn, SpellName)
    if SpellName == 'Read' then
        if not HasQuest(Spawn,SummonerQuest)then
        OfferQuest(NPC,Spawn, SummonerQuest)
        end
    local con = CreateConversation()
    local zone = GetZone(NPC) 

    AddConversationOption(con, "[Read about earth elementals]","Trial")
    AddConversationOption(con, "[Close the book]")
    StartDialogConversation(con, 1, NPC, Spawn, "The Initiate's Guide to Summoning.\n\nA primer to the world of conjuring creatures and beyond.\n\nScribbled note: Assuming you had the brains to make it this far, this task should prove your magical aptitude of dominating those you summon.\n- Arcanist Sonius")
end
end        
        
 function Trial(NPC,Spawn)
    local zone = GetZone(NPC)
    local con = CreateConversation()
    if GetSpawnByLocationID(zone, 133793658) ~= nil and GetSpawnByLocationID(zone, 133793659)~= nil then
    AddConversationOption(con, "[Recite the incantation]", "Action")
    end
    if GetSpawnByLocationID(zone, 133793658) == nil and GetSpawnByLocationID(zone, 133793659)== nil then
            local zone = GetZone(NPC) 
            Tub = GetSpawnByLocationID(zone,133793655)           
            SpawnSet(Tub, "show_command_icon", 1)
            SpawnSet(Tub, "display_hand_icon", 1)           
            SpawnSet(Tub, "show_name", 1) 
    end    
    AddConversationOption(con, "[Close the book]")
    StartDialogConversation(con, 1, NPC, Spawn, "Elementary Summonings of Earth Minions:\n\n\n1.  Carefully place a mound of clay on the summoning surface.\n\n2.  Take one crystal shard of malachite and sink it into the mound of clay.\n\n3.  Simultaniously sprinkle Crystalized Essence of Mana onto the mound of clay.\n\n4. Consult the incantation here.  An ancient version of \"Elementaling: Earth\" shall provide the catalyst needed. The Earth Elemental will take shape.\n\n5.  Destroy the Elemental when you are finished with it.")
end       
        
function Action(NPC,Spawn)
    CloseConversation(NPC,Spawn)
        local zone = GetZone(NPC)
    if GetSpawnByLocationID(zone, 133793658) ~= nil and GetSpawnByLocationID(zone, 133793659)~= nil then
        CastSpell(Spawn, 165)
        AddTimer(NPC,2500,"Spawn1",1,Spawn)
        local zone = GetZone(Spawn)
        local SummonRing = GetSpawnByLocationID(zone,133793658)
    end        
         
    end


function Spawn1(NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133793640)
    ApplySpellVisual(SummonRing, 165)
    if GetSpawnByLocationID(zone, 133793658)~= nil then -- pile of clay
    Despawn(GetSpawnByLocationID(zone,133793658))
    end
    if GetSpawnByLocationID(zone,133793662) == nil then
    local Elemental = SpawnByLocationID(zone,133793662)
    end
end

function respawn(NPC)
	spawn(NPC)
end