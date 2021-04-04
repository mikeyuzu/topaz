-----------------------------------
-- Area: Lebros Cavern (Excavation Duty)
--  Mob: Qiqirn Mine
-----------------------------------
local ID = require("scripts/zones/Lebros_Cavern/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    local instance = mob:getInstance()
    local players = instance:getChars()
    mob:setMobMod(tpz.mobMod.NO_MOVE, 1)
    mob:SetAutoAttackEnabled(false)

    for i, v in pairs(players) do
        v:messageSpecial(ID.text.MINE_COUNTDOWN, 10)
        mob:timer(5000, function(mob) v:messageSpecial(ID.text.MINE_COUNTDOWN, 5) end)
        mob:timer(6000, function(mob) v:messageSpecial(ID.text.MINE_COUNTDOWN, 4) end)
        mob:timer(7000, function(mob) v:messageSpecial(ID.text.MINE_COUNTDOWN, 3) end)
        mob:timer(8000, function(mob) v:messageSpecial(ID.text.MINE_COUNTDOWN, 2) end)
        mob:timer(9000, function(mob) v:messageSpecial(ID.text.MINE_COUNTDOWN, 1) end)
    end

    mob:timer(10000, function(mob) mob:useMobAbility(1838) end)
    mob:timer(12000, function(mob) mob:setHP(0) end)
end

entity.onMobDeath = function(mob, player, isKiller)
    local pos = mob:getPos()
    local instance = mob:getInstance()

    if (pos.x > 161 and pos.x < 184) and (pos.z > 359 and pos.z < 385) then
        GetMobByID(ID.mob[EXCAVATION_DUTY].BRITTLE_ROCK1, instance):setHP(0)
    elseif (pos.x > 254 and pos.x < 264) and (pos.z > 192 and pos.z < 223) then
        GetMobByID(ID.mob[EXCAVATION_DUTY].BRITTLE_ROCK3, instance):setHP(0)
    elseif (pos.x > 327 and pos.x < 343) and (pos.z > 278 and pos.z < 303) then
        GetMobByID(ID.mob[EXCAVATION_DUTY].BRITTLE_ROCK5, instance):setHP(0)
    elseif (pos.x > 300 and pos.x < 320) and (pos.z > 335 and pos.z < 343) then
        GetMobByID(ID.mob[EXCAVATION_DUTY].BRITTLE_ROCK4, instance):setHP(0)
    end
end

return entity
