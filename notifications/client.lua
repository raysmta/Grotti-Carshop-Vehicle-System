local sX,sY = guiGetScreenSize();

local DxData = {
	font = "default-bold",
	fontScale = false,
	colorData = {0,176,255},
	loginX = sX*0.6,
	loginTick = 0,
	fontScale = sY/25,
	noti = {
	},
	RestartTick = 0,
};


local Notifications = {};

function outputClientDx(message,type)
if (message and type) then
	table.insert(DxData.noti,{message,type or "success",getTickCount(),dxGetTextWidth(message,DxData.fontScale*0.03,DxData.font)+sX*0.01,0,0,0})
	DxData.RestartTick = getTickCount()
end
end
addEvent('Server:CallNotifications',true);
addEventHandler('Server:CallNotifications',getRootElement(),outputClientDx);

addEventHandler('onClientRender', root,
	function()
	local Notifications = DxData.noti
	if #Notifications ~= 0 then
		local startY = sY*0.4
		local i = 1
		repeat
			mData = Notifications[i]
			local drawThis = true
			if i~= 1 then
				startY = startY + sY*0.0425
			end
			if mData[5] == 0 and mData[6] == 0 then
				mData[5] = -mData[4]-sX*0.015
				mData[6] = startY
				mData[7] = startY
			end
			local tick = getTickCount() - mData[3]
			local posX,posY,alpha
			if tick < 1000 then
				local progress = math.min(tick/1000,1)
				mData[5] = interpolateBetween(0,0,0,0,0,0,progress,"Linear");
			elseif tick >= 1000  and tick <= 7000 then
				mData[5] = 0
			elseif tick > 7000 then
				local progress = math.min((tick-7000)/1000,1);
				mData[5] = interpolateBetween(mData[5],0,0,-mData[4]-mData[4],0,0,progress,"Linear");
				if progress >= 1 then
					table.remove(Notifications,i)
					drawThis = false
					DxData.RestartTick = getTickCount()
				end
			end
			local globalTick = getTickCount() - DxData.RestartTick
			if drawThis then
				mData[7] = startY
				mData[6] = interpolateBetween(mData[6],0,0,mData[7],0,0,math.min(globalTick/1000,1),"Linear");
				posX = mData[5]
				posY = mData[6]
				alpha = 255
				dxDrawRectangle(posX+50,posY+100,mData[4],sY*0.04,tocolor(0,0,0,alpha*0.75));
				dxDrawText(mData[1],posX+100,posY+200,posX+mData[4]-50,posY+sY*0.04,tocolor(255,255,255,255),0.7, DxData.font, 'center', 'center', true, false, true, true);
			end
			i = i + 1
		until i>#Notifications
		DxData.Notifications = Notifications
	end
end
);