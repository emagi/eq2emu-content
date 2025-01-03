--[[
    Script Name    : SpawnScripts/Antonica/ahighwaymancampfireD.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.21 08:02:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
CampSpawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


--- CAMP 1

function CampSpawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local CampSpawn1 = SpawnByLocationID(zone, 133782443) --Highwayman Summoner
    else
    local CampSpawn1a = SpawnByLocationID(zone, 133782447) -- Highwayman Melee
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local CampSpawn2 = SpawnByLocationID(zone, 133782444)--Highwayman Summoner
    else
    local CampSpawn2a = SpawnByLocationID(zone, 133782448)-- Highwayman Melee
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local CampSpawn3 = SpawnByLocationID(zone, 133782445)--Highwayman Summoner
    else
    local CampSpawn3a = SpawnByLocationID(zone, 133782449)-- Highwayman Melee
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local CampSpawn4 = SpawnByLocationID(zone, 133782446)--Highwayman Summoner
    else
    local CampSpawn4a = SpawnByLocationID(zone, 133782450)-- Highwayman Melee
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp1MerchantSpawn = SpawnByLocationID(zone, 133782453)--Distressed Merchant
    else
    end
    

        
AddTimer(NPC,6000,"CampSpawnCheck_Stage1")
end

function CampSpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local CampSpawn1 = GetSpawnByLocationID(zone, 133782443)
local CampSpawn1a = GetSpawnByLocationID(zone, 133782447)
local CampSpawn2 = GetSpawnByLocationID(zone, 133782444)
local CampSpawn2a = GetSpawnByLocationID(zone, 13378248)
local CampSpawn3 = GetSpawnByLocationID(zone, 133782445)
local CampSpawn3a = GetSpawnByLocationID(zone, 133782449)
local CampSpawn4 = GetSpawnByLocationID(zone, 133782446)
local CampSpawn4a = GetSpawnByLocationID(zone, 133782450)

if IsAlive(CampSpawn1) == true or IsAlive(Camp1Spawn1a) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn2) == true or IsAlive(Camp1Spawn2a) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn3) == true or IsAlive(Camp1Spawn3a) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn4) == true or IsAlive(Camp1Spawn4a) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    
   else
      AddTimer(NPC, 6000, "Camp_Stage2")
  end
end
   
function Camp_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp_Stage2Spawn1=SpawnByLocationID(zone, 133792533)--Bloodsaber Agent
    FaceTarget(Camp_Stage2Spawn1, Spawn)
    Attack(Camp_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"CampSpawnCheck_Stage2")
end


function CampSpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp_Stage2Spawn1 = GetSpawnByLocationID(zone, 133792533)
 if IsAlive(Camp_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp_Stage3")
  end
end


function Camp_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp_Stage3Spawn1=SpawnByLocationID(zone, 133782452)--Bloodsaber Corruptor
    FaceTarget(Camp_Stage3Spawn1, Spawn)
    Attack(Camp_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local CampArkofPower = SpawnByLocationID(zone, 133782455)--Ark of Power
    local CampMerchantSpawn = GetSpawnByLocationID(zone, 133782453)--Distressed Merchant
    if CampMerchantSpawn ~=nil then
    Despawn(CampMerchantSpawn)
    local CampGratifiedMerchant = SpawnByLocationID(zone, 133782454)--Gratified Merchant
    AddTimer(NPC,90000,"CampReset")
    else   
    AddTimer(NPC,60000,"CampReset")
end
end
end


function CampSpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp_Stage3Spawn1 = GetSpawnByLocationID(zone, 133782452) --Blodsaber Corrupter
 if IsAlive(Camp_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage3",1,Spawn)
   else
local CampMerchantSpawn = GetSpawnByLocationID(zone, 133782453)--Distressed Merchant
    if CampMerchantSpawn ~=nil then
    Despawn(CampMerchantSpawn)
    local CampGratifiedMerchant = SpawnByLocationID(zone, 133782454)--Gratified Merchant
    AddTimer(NPC, 90000, "CampReset",1,Spawn)
    else
    AddTimer(NPC, 10000, "CampReset",1,Spawn)
  end
end
end

function CampReset(NPC)
local zone = GetZone(NPC)
local CampObject = GetSpawnByLocationID(zone, 171714)   
if CampObject~= nil then
Despawn(CampObject)
    local CampArkofPower = GetSpawnByLocationID(zone, 133782455)--Ark of Power
    if CampArkofPower ~=nil then
    Despawn(CampArkofPower)
    end  
    local CampGratifiedMerchant = GetSpawnByLocationID(zone, 133782454)--Gratified Merchant
    if CampGratifiedMerchant ~=nil then
    Despawn(CampGratifiedMerchant)
    end  
end
end
