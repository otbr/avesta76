function onSay(cid, words, param)
	local position = getPlayerPosition(cid)
	doPlayerSendTextMessage(cid, 22, "You current position is [X: " .. position.x .. " | Y: " .. position.y .. " | Z: " .. position.z .. "]")
end