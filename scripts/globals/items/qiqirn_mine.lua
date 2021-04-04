-----------------------------------
-- ID: 5331
-- Item: Qiqirn Mine
-- When used, Summons a bomb to blowup a wall
-----------------------------------
require("scripts/globals/zone")
require("scripts/globals/status")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if target:getZoneID() ~= tpz.zone.LEBROS_CAVERN then
        result = 55
    end
    return result
end

item_object.onItemUse = function(target)
    local ID = zones[target:getZoneID()]
    local instance = target:getInstance()
    local X = target:getXPos()
    local Y = target:getYPos()
    local Z = target:getZPos()
    local R = 190

    local bomb = instance:insertAlly(23)
    bomb:setSpawn(X, Y, Z, R)
    bomb:spawn()

    bomb:updateEnmity(target)
end

return item_object
