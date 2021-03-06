local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


-- OTServ event handling functions start
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end

local node1 = keywordHandler:addKeyword({'great light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn great light for 500 gp?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'great light',vocation = 4, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light healing for 170 gp?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light healing',vocation = 4, price = 170, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn light for free?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'light',vocation = 4, price = 0, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'find person'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn find person for 80 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'find person',vocation = 4, price = 80, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'antidote'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn antidote for 150 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'antidote',vocation = 4, price = 150, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'magic rope'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn magic rope for 200 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'magic rope',vocation = 4, price = 200, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'haste'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn haste for 600 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'haste',vocation = 4, price = 600, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'berserk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn berserk for 2500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'berserk',vocation = 4, price = 2500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'challenge'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to challenge for 2000 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'challenge',vocation = 4, price = 2000, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})

local node1 = keywordHandler:addKeyword({'levitate'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Would you like to learn levitate for 500 gold coins?'})
node1:addChildKeyword({'yes'}, StdModule.learnSpell, {npcHandler = npcHandler, premium = false, spellName = 'levitate',vocation = 4, price = 500, level = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Cant you handle the power of the spell?', reset = true})


-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())


