local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_BLOODHIT)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POWERBOLT)
 
function onGetFormulaValues(cid, skill, attack, factor)
 
	skill = getPlayerSkill(cid, 4)
	return
		- (skill * 0.5),
		- (skill * 1.8)
end
 
local repeatTimes = 1
local timeBetween = 1000 -- 1000 = 1 sec
 
setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, 'onGetFormulaValues')
function onCastSpell(cid, var)
	for i = 1, repeatTimes do
		addEvent(doCombat, timeBetween * i, cid, combat, var)
	end
	return doCombat(cid, combat, var)
end