-----------------------------------
-- Area: Mamool Ja Training Grounds (Imperial Agent Rescue)
--  Mob: Mamool Ja Warder
-----------------------------------
require("scripts/globals/status")
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")

local entity = {}

entity.onMobWeaponSkill = function(target, mob, skill)
    local instance = mob:getInstance()
    local gate_damage_distance = 3.0
    local skillid = skill:getID()
    local gate1 = GetNPCByID(ID.npc._ju3, instance)
    local gate2 = GetNPCByID(ID.npc._ju5, instance)
    local gate3 = GetNPCByID(ID.npc._ju7, instance)

    local target_gate = nil
    if (gate1:checkDistance(target) <= gate_damage_distance) then
        target_gate = gate1
    elseif (gate2:checkDistance(target) <= gate_damage_distance) then
        target_gate = gate2
    elseif (gate3:checkDistance(target) <= gate_damage_distance) then
        target_gate = gate3
    end

    if target_gate ~= nil then
        local is_open = target_gate:getLocalVar("isOpen")
        if is_open == 0 then
            local gate_damage = 0
            if skillid == 1731 then
                -- forceful_blow フォースフルブロー
                gate_damage = math.random(200, 1000)
            elseif skillid == 1732 then
                -- somersault_kick サマーソルトキック
                gate_damage = math.random(200, 1000)
            elseif skillid == 1733 then
                -- firespit ファイアースピット
                gate_damage = math.random(200, 1000)
            end
            if gate_damage > 0 then
                local gate_hp = target_gate:getLocalVar("hitpoint") - gate_damage
                if gate_hp <= 0 then
                    gate_hp = 0
                    target_gate:openDoor(1800)
                    target_gate:setLocalVar("isOpen", 1)
                end
                target_gate:setLocalVar("hitpoint", gate_hp)
                --target_gate:takeDamage(gate_damage, mob, tpz.attackType.MAGICAL, tpz.damageType.FIRE)
            end
        end
    end
   
end

entity.onMobDeath = function(mob, player, isKiller)
end

entity.onMobDespawn = function(mob)
    local instance = mob:getInstance()
    instance:setProgress(instance:getProgress() + 1)
end

return entity
