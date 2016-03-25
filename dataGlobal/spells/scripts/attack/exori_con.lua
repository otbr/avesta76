local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ARROW)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_BLOODHIT)


function onGetFormulaValues(cid, skill, attack, factor)
	skill = getPlayerSkill(cid, 4)
	return
		- (skill * 0.5),
		- (skill * 1.3)
end


setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, 'onGetFormulaValues')
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
