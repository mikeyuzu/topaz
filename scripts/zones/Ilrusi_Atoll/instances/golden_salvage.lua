-----------------------------------
-- Assault: Golden Salvage
-- TODO: random the chest locations
-----------------------------------
require("scripts/globals/instance")
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
-----------------------------------
local instance_object = {}

local chest_pos = {
    [ 1] = { 509.000, -7.000, 100.000,192 },
    [ 2] = { 590.000,-15.000, 103.000,127 },
    [ 3] = { 346.000, -2.000, 113.000, 49 },
    [ 4] = { 351.000,-15.000, -14.000,134 },
    [ 5] = { 305.000, -7.000, -56.000,249 },
    [ 6] = { 288.000,-15.000,-105.000,248 },
    [ 7] = { 331.000,-15.000,-181.000,202 },
    [ 8] = { 434.000, -7.000,-123.000,103 },
    [ 9] = { 330.000, -3.000, -34.000,163 },
    [10] = { 472.000, -7.000, 228.000, 96 },
    [11] = { 221.000, -1.000, -32.000,226 },
    [12] = { 546.000, -7.000, 161.000,156 },
    [13] = { 338.000,-15.000,-130.000, 90 },
    [14] = { 371.000,-16.000,-128.000, 93 },
    [15] = { 286.000, -2.000,  50.000,  0 },
    [16] = { 254.000, -0.000,  34.000, 62 },
    [17] = { 386.000, -4.000, 146.000, 80 },
    [18] = { 473.000, -2.000, 133.000,125 },
    [19] = { 450.000, -0.000, 187.000, 60 },
    [20] = { 529.000, -6.000, 262.000, 50 },
}

instance_object.afterInstanceRegister = function(player)
    local instance = player:getInstance()

    player:messageSpecial(ID.text.ASSAULT_41_START, GOLDEN_SALVAGE)
    player:messageSpecial(ID.text.TIME_TO_COMPLETE, instance:getTimeLimit())
end

instance_object.onInstanceCreated = function(instance)
    local figureheadChest = math.random(ID.npc.ILRUSI_CURSED_CHEST_OFFSET, ID.npc.ILRUSI_CURSED_CHEST_OFFSET + 11)

    for i, v in pairs(ID.mob[GOLDEN_SALVAGE]) do
        SpawnMob(v, instance)
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setPos(380, -8, 65, 0)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setPos(380, -8, 62, 0)
    GetNPCByID(ID.npc._1jp, instance):setAnimation(8)
    GetNPCByID(ID.npc._jja, instance):setAnimation(8)
    GetNPCByID(ID.npc._jjb, instance):setAnimation(8)

    local pos = utils.permgen(#chest_pos)
    for id = 0, 11, 1 do
        GetNPCByID(ID.GOLDEN_SALVAGE_CHEST.CURSED_CHEST1 + id, instance):setPos(chest_pos[pos[id + 1]])
    end

    instance:setProgress(instance:getProgress() + (figureheadChest))

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
