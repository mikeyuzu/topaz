-----------------------------------
-- Area: Ilrusi Atoll
--  NPC: Rune of Release
-- !pos 412 -9 54 55
-----------------------------------
local ID = require("scripts/zones/Periqia/IDs")
require("scripts/globals/besieged")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)

    local instance = npc:getInstance()

    if (instance:completed()) then
        player:startEvent(100, 3)
    end

    return 1

end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)

    local instance = player:getInstance()
    local chars = instance:getChars()
    local id = instance:getID()
    local points = 0
    local playerpoints = ((#chars -3)*100)

    if (csid == 100 and option == 1) then
        if (id >= SEAGULL_GROUNDED and id <= THE_PRICE_IS_RIGHT) then
            points = 1000 - math.max(playerpoints, 0)
        end
        for i, v in pairs(chars) do
            v:messageSpecial(ID.text.ASSAULT_POINTS_OBTAINED, points)
            v:addAssaultPoint(PERIQIA_ASSAULT_POINT, points)
            v:setCharVar("AssaultComplete", 1)
            if (v:hasCompletedAssault(v:getCurrentAssault())) then
                v:addCharVar("AssaultPromotion", 1)
            else
                v:addCharVar("AssaultPromotion", 5)
            end
            v:startEvent(102)
        end
    end
    if csid == 102 then
        for i, v in pairs(chars) do
            v:setPos(0, 0, 0, 0, 79)
        end
    end
end

return entity
