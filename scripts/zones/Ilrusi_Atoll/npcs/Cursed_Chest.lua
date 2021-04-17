-----------------------------------
-- Area: Ilrusi Atoll
--  NPC: Cursed Chest
-----------------------------------
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if npc:getLocalVar("open") == 1 then
        return
    end

    player:messageSpecial(ID.text.CHEST)

    local npcID = npc:getID()
    local instance = npc:getInstance()
    local figureheadChest = instance:getProgress()

    if (npcID == figureheadChest) then
        player:messageSpecial(ID.text.GOLDEN)
        npc:entityAnimationPacket("open")
        npc:setLocalVar("open", 1)
        instance:complete()
        for i, v in pairs(ID.GOLDEN_SALVAGE_CHEST) do
            DespawnMob(v, instance)
        end
    else
        SpawnMob(npcID, instance):updateEnmity(player)
        GetMobByID(npcID, instance):setPos(npc:getXPos(), npc:getYPos(), npc:getZPos(), npc:getRotPos())
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
