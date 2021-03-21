-----------------------------------
require("scripts/globals/zone")
-----------------------------------

tpz = tpz or {}
tpz.assault = tpz.assault or {}

function tpz.assault.handleLootRolls(lootTable, player, npc)
    for i = 1, #lootTable do
        local lootGroup = lootTable[i]
        if lootGroup then
            local max = 0
            for _, entry in pairs(lootGroup) do
                max = max + entry.droprate
            end
            local roll = math.random(max)
            for _, entry in pairs(lootGroup) do
                max = max - entry.droprate
                if roll > max then
                    if entry.itemid ~= 0 then
                        player:addTreasure(entry.itemid, npc)
                    end
                    break
                end
            end
        end
    end
end
