--[[
	Script Name	: SpawnScripts/Generic/SpiritShard.lua
	Script Purpose	: Spirit Shard
--]]

function spawn(NPC)
	local DebtToRemovePct = GetRuleFlagFloat("R_Combat", "ShardDebtRecoveryPercent")
		
	if GetRuleFlagBool("R_Combat", "ShardRecoveryByRadius") == true then
		SetPlayerProximityFunction(NPC, 10.0, "recovershard")
	end
	
	AddPrimaryEntityCommand(nil,NPC,"Recover Spirit Shard",10.0,"recovershard","",0,0,1)
	
	local charID = GetShardCharID(NPC)
	SetAccessToEntityCommandByCharID(NPC, charID, "recovershard", true)

	CheckShardExpired(NPC) -- update 4/22/2023 to remove long standing shards
end

function recovershard(NPC, Spawn)
	local charid = GetShardCharID(NPC)
	
	if GetCharacterID(Spawn) == charid then
		local DebtToRemovePct = GetRuleFlagFloat("R_Combat", "ShardDebtRecoveryPercent")
		local DeathXPDebt = GetRuleFlagFloat("R_Combat", "DeathExperienceDebt")
		
		local debt = GetInfoStructFloat(Spawn, "xp_debt")
		local DebtToRemove = (DebtToRemovePct/100.0)*(DeathXPDebt/100.0);
		if debt > DebtToRemove then
			SetInfoStructFloat(Spawn, "xp_debt", debt - DebtToRemove)
		else
			SetInfoStructFloat(Spawn, "xp_debt", 0.0)
		end
        PlaySound(Spawn,"sounds/ui/shard_absorb.wav", GetX(NPC), GetY(NPC), GetZ(NPC))		
		SendMessage(Spawn, "You recover a spirit shard and recovered some experience debt.", "white")
		SetCharSheetChanged(Spawn, true)
		local shardid = GetShardID(NPC)
		DeleteDBShardID(shardid)
		Despawn(NPC)
	end
end

function CheckShardExpired(NPC)
	local creationStamp = GetShardCreatedTimestamp(NPC)
	local year_ = tonumber(string.sub(creationStamp, 1, 4))
	local month_ = tonumber(string.sub(creationStamp, 6, 7))
	local day_ = tonumber(string.sub(creationStamp, 9, 10))
	local hour_ = tonumber(string.sub(creationStamp, 12, 13))
	local min_ = tonumber(string.sub(creationStamp, 15, 16))
	local sec_ = tonumber(string.sub(creationStamp, 18, 19))
	local currentUTCTime = os.time(os.date('!*t'))
	local creationTime = os.time{year=year_, month=month_, day=day_, hour=hour_, min=min_,sec=sec_}
	
	local resultDiff = currentUTCTime - creationTime;
	local shardLifeTime = GetRuleFlagFloat("R_Combat", "ShardLifetime")
	
	if shardLifeTime > 0 and resultDiff > shardLifeTime then
		local shardid = GetShardID(NPC)
		DeleteDBShardID(shardid) -- you could alternatively choose to not delete from DB, but for now it only holds XP debt recovery not items
		Despawn(NPC)
	end
end
