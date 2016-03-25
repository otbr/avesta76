function onSay(cid, words, param)
	local cost = 50000
	local dias = 10
	
	if getPlayerPremiumDays(cid) < 365 then
		if doPlayerRemoveMoney(cid, cost) == TRUE then
			doPlayerAddPremiumDays(cid, dias)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have bought 10 days of premium account.")
		else
			doPlayerSendCancel(cid, "You don't have enough money, "..dias.." days premium account costs "..cost.." gold coins.")
			doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
		end
	else
		doPlayerSendCancel(cid, "You can not buy more than ten days of Premium Account.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
	end
	
	return true
end

--[[
function onSay(cid, words, param)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Digite !buypremium quantidade, exemplo !buypremium 20.")
		return true
	end

	if getPlayerPremiumDays(cid) >= 360 then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você nao pode mais comprar premium")
		return true
	end
	
	local s = tonumber(param)
	local cost = 1000 -- quanto ira custar cada dia
	
	if doPlayerRemoveMoney(cid, s * cost) == true then
		doPlayerAddPremiumDays(cid, s)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você comprou "..s.." dias de premium por "..cost.." gp's cada um")
	end
	
	return true
end
]]--