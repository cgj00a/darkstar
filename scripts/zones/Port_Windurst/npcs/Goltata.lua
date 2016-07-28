-----------------------------------
-- Area: Port Windurst
-- NPC:  Goltata
--  Involved in Quests: Wonder Wands
-- Working 100%
-----------------------------------
package.loaded["scripts/zones/Port_Windurst/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Windurst/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/titles");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
WonderWands = player:getQuestStatus(WINDURST,WONDER_WANDS);
    if (WonderWands == QUEST_ACCEPTED) then
        player:startEvent(0x0101,0,0,17091);
    elseif (WonderWands == QUEST_COMPLETED) then
        player:startEvent(0x010d);
    else
        player:startEvent(0xe8);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printff("CSID: %u",csid);
    -- printff("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printff("CSID: %u",csid);
    -- printff("RESULT: %u",option);
end;
