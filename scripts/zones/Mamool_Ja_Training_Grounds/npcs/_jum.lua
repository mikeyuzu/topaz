-----------------------------------
-- Area: Mamool Ja Training Grounds
-- NPC:  Pot Hatch
-----------------------------------
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")
require("scripts/globals/besieged")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    npc:openDoor(1800)

    if (npc:getLocalVar("success") == 1) then
        local instance = npc:getInstance()
        local brujeel = GetNPCByID(ID.npc.BRUJEEL, instance)
        brujeel:setPos(269.165, 0.885, -582.207)
        brujeel:lookAt(player:getPos())
        brujeel:showNPC(20)
        brujeel:timer(1000, function(brujeel)
            brujeel:setAnimation(tpz.animation.NONE)
        end)
        for i = 0,5 do
            brujeel:timer(1000 + 1000 * i, function(brujeel)
                brujeel:messageText(brujeel, ID.text.BRUJEEL_RESCUE_1 + i)
            end)
        end
        brujeel:timer(7000, function(npc)
            local instance = npc:getInstance()
            instance:setProgress(1)
        end)
        npc:setLocalVar("success", 0)
    end
end

return entity