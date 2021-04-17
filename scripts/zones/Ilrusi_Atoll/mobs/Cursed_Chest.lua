-----------------------------------
-- Area: Ilrusi Atoll
--  Mob: Cursed Chest
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    mob:setStatus(1)
    mob:hideName(false)
    mob:setModelId(258)
    mob:setAnimationSub(1)
end

entity.onMobFight = function(mob, target)
    local distanceMin = 3
    local distanceMax = 20

    if mob:checkDistance(target) > distanceMin and mob:checkDistance(target) < distanceMax then
        target:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos())
    end
end

entity.onMobDeath = function(mob, player, isKiller)
end

return entity
