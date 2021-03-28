-----------------------------------
-- Assault: Imperial Agent Rescue
-----------------------------------
require("scripts/globals/instance")
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")
-----------------------------------
local instance_object = {}

instance_object.afterInstanceRegister = function(player)
    local instance = player:getInstance()
    player:messageSpecial(ID.text.ASSAULT_11_START, IMPERIAL_AGENT_RESCUE)
    player:messageSpecial(ID.text.TIME_TO_COMPLETE, instance:getTimeLimit())
end

instance_object.onInstanceCreated = function(instance)
    local gate_hp = 1000
    local gate_npcs = {
        ID.npc._ju3,
        ID.npc._ju5,
        ID.npc._ju7
    }

    for i, v in pairs(ID.mob[IMPERIAL_AGENT_RESCUE]) do
        SpawnMob(v, instance)
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setPos(220, 1, -504, 0)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setPos(220, 1, -502, 0)
    for i, v in pairs(gate_npcs) do
        GetNPCByID(v, instance):setLocalVar("hitpoint", gate_hp)
        GetNPCByID(v, instance):setLocalVar("isOpen", 0)
    end

    local success_pot_id = nil
    switch (math.random(1, 3)): caseof
    {
        [1] = function (x) success_pot_id = ID.npc._jul end,
        [2] = function (x) success_pot_id = ID.npc._jum end,
        [3] = function (x) success_pot_id = ID.npc._jun end,
    }
    local npcpod = GetNPCByID(success_pot_id, instance)
    npcpod:setLocalVar("success", 1)

    local brujeel = GetNPCByID(ID.npc.BRUJEEL, instance)
    brujeel:setAnimation(tpz.animation.HEALING)
end

instance_object.onInstanceTimeUpdate = function(instance, elapsed)
    tpz.instance.updateInstanceTime(instance, elapsed, ID.text)
end

instance_object.onInstanceFailure = function(instance)

    local chars = instance:getChars()

    for i, v in pairs(chars) do
        v:messageSpecial(ID.text.MISSION_FAILED, 10, 10)
        v:startEvent(102)
    end
end

instance_object.onInstanceProgressUpdate = function(instance, progress)
    if progress > 0 then
        instance:complete()
        --local brujeel = GetNPCByID(ID.npc.BRUJEEL, instance)
        --brujeel:addStatusEffectEx(tpz.effect.TELEPORT, 0, tpz.teleport.id.WARP, 0, 4)
    end

end

instance_object.onInstanceComplete = function(instance)

    local chars = instance:getChars()

    for i, v in pairs(chars) do
        v:messageSpecial(ID.text.RUNE_UNLOCKED_POS, 8, 8)
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setStatus(tpz.status.NORMAL)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setStatus(tpz.status.NORMAL)

end

instance_object.onEventUpdate = function(player, csid, option)
end

instance_object.onEventFinish = function(player, csid, option)
end

return instance_object
