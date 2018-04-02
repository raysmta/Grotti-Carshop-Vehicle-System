function outputDx(player, text, type)
	if (player and text and type) then
		triggerClientEvent(player, 'Server:CallNotifications', player, text, type);
	end
end